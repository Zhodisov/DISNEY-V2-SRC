import infrastructure
from aiohttp import web
from data.user import User
from typing import Dict, Optional
from utils import cryptjson, gentoken, records
import aiofiles
import api
import asyncio
import datetime
import discordbot
import os
import resources
import ujson
import json  

discord = ""

class API:
    def __init__(self):
        self.is_local: bool = "C:" in os.getcwd() or "D:" in os.getcwd()

    @staticmethod
    def authentication(auth: str) -> Optional[str]:
        if len((credentials := auth.split())) > 1:
            scheme, token = credentials
            if scheme == "Bearer":
                return token
        return None

    async def update(self):
        try:
            with open("tokens.json", "r") as file:
                api.tokens = json.load(file)
        except Exception as e:
            print(f"Failed to read token.json: {e}")

    async def fetch(self):
        while True:
            await api.parser.start()
            await asyncio.sleep(8.0)

endpoint = API()
import aiohttp

async def swf_downloader():
    while True:
        try:
            async with aiohttp.ClientSession() as session:
                async with session.get(
                    f"{infrastructure.parser_url}/transformice?swf&d={datetime.datetime.now().timestamp()}"
                ) as response:
                    if response.status == 200:
                        infrastructure.tfm_swf_expected_len = response.content_length

                        async with aiofiles.open("./tfm.swf", "wb") as f:
                            await f.write(await response.read())
                    else:
                        print(f"Failed to download Transformice SWF: {response.status}")
        except Exception as e:
            print(f"Failed to download Transformice SWF: {e}")
        await asyncio.sleep(8.0)


def check_conn(access_token: str, addr: str, **kwargs):
    if access_token is not None:
        if addr in infrastructure.ips:
            access_token = infrastructure.ips[addr][1]
    else:
        return None

    if access_token in infrastructure.tokens:
        if (flash_token := kwargs.get("flash_token")) is not None:
            if infrastructure.tokens[access_token]["user"].flash_token != flash_token:
                return False
        if (session_token := kwargs.get("session_token")) is not None:
            if infrastructure.sessions.get(session_token) is None:
                return False
        return access_token
    return False


def store_access(key: str, addr: str, user: User, session_token: str) -> Dict:
    result = {}

    if addr:
        now = datetime.datetime.now().timestamp()

        if addr not in infrastructure.ips:
            access_token = gentoken.gen_token()
            infrastructure.ips[addr] = (now, access_token)
            infrastructure.tokens[access_token] = temp = {
                "key": key,
                "user": user,
                "level": user.level,
                "ips": [addr],
                "conn_limit": user.connection_limit,
            }
            infrastructure.sessions[session_token] = (key, user, access_token)
            asyncio.create_task(del_token(addr, access_token))
        else:
            access_token = infrastructure.ips[addr][1]
            result["contains"] = True

        result.update(
            dict(
                access_token=access_token,
                level=user.level,
                sleep=datetime.datetime.fromtimestamp(now - infrastructure.ips[addr][0])
                .timetuple()
                .tm_min,
            )
        )

    return result


async def del_token(ip: str, token: str):
    await asyncio.sleep(10800.0)

    if ip in infrastructure.ips:
        del infrastructure.ips[ip]

    if token in infrastructure.tokens:
        del infrastructure.tokens[token]


async def unblock_addr(addr: str):
    await asyncio.sleep(240.0)

    if addr in infrastructure.auth_attempts:
        del infrastructure.auth_attempts[addr]

async def app_main():
    async with aiofiles.open("./config.json") as f:
        infrastructure.config = ujson.loads(await f.read())
        if not infrastructure.is_local:
            infrastructure.records_data = {
                "new": records.read_spreadsheet(
                    "1xoPZXT5apgKm1Z5J-YEv-sXTQ6BjB0vnPgrWLxhRpaU"
                ),
                "old": records.read_spreadsheet(
                    "1xoPZXT5apgKm1Z5J-YEv-sXTQ6BjB0vnPgrWLxhRpaU"
                ),
            }

    app = web.Application()
    app.router.add_get("/", resources.index)
    app.router.add_get("/auth", api.Auth)
    app.router.add_get("/dashboard", resources.dashboard)
    app.router.add_get("/get_keys", api.GetKeys)
    app.router.add_get("/api/get-data", api.GetKeys)
    app.router.add_get("/tfmlogin", api.TfmLogin)
    app.router.add_get("/transformice", api.Transformice)
    app.router.add_get("/api/tfm_keys", api.TfmKeys)
    app.router.add_get("/transformicex", api.Transformicex)
    app.router.add_get("/disneyclient", lambda request: web.FileResponse('./public/ChargeurTransformice.swf'))
    app.router.add_routes(
        [
            web.get("/data", api.Data),
            web.get("/data/soft", api.Soft),
            web.get("/mapstorage", api.MapStorage),
            web.post("/data", api.Data),
            web.post("/mapstorage", api.MapStorage),
        ]
    )

    app.router.add_get("/api/discord", api.discord_handler)
    app.router.add_get("/api/auth", api.Auth)
    app.router.add_get("/api/fetch", api.Fetch)
    app.router.add_get("/api/update", api.Update)
    app.router.add_get("/crossdomain.xml", lambda request: web.FileResponse('./public/crossdomain.xml'))
    app.router.add_get("/api/get-image2", lambda request: web.FileResponse('./images/discord.png'))
    app.router.add_get("/public/logo.png", lambda request: web.FileResponse('./public/logo.png'))
    app.router.add_get("/images/robot.gif", lambda request: web.FileResponse('./images/robot.gif'))
    app.router.add_static("/images", "./images")
    app.router.add_static('/public', path='./public', name='public')

    runner = web.AppRunner(app)
    await runner.setup()

    port = int(os.getenv("PORT", 8080))
    site = web.TCPSite(runner, "localhost", port)
    await site.start()

    infrastructure.discord = discordbot.Bot("!")

    await asyncio.gather(
        swf_downloader(),
        #infrastructure.discord.start(discord),
        endpoint.update(),
        endpoint.fetch()
    )

if __name__ == "__main__":
    asyncio.run(app_main())