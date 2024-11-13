from aiohttp import ClientSession, web
from typing import Optional
import api
import asyncio
import os
import stat
import subprocess
import json

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

async def main():
    app = web.Application()
    await endpoint.update()

    app.router.add_get("/api/tfm_keys", api.TfmKeys)
    app.router.add_get("/transformice", api.Transformice)

    runner = web.AppRunner(app)
    await runner.setup()
    site = web.TCPSite(runner, "0.0.0.0", os.getenv("PORT", 8090))
    await site.start()

    await endpoint.fetch()

if __name__ ==  "__main__":
    asyncio.run(main())
