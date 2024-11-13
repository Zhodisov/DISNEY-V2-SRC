from aiohttp import streamer
from aiohttp import web
from data import client
from io import BytesIO
from utils import cryptjson

import aiofiles
import infrastructure
import re
import server

map_pattern2 = re.compile(b"#$")

@streamer
async def data_sender(writer, **kwargs):
    if (file_path := kwargs.get("file_path")) is not None:
        with open(file_path, "rb") as f:
            while (chunk := f.read(2 ** 16)):
                await writer.write(chunk)
    elif (data := kwargs.get("data")) is not None:
        while (chunk := data.read(2 ** 16)):
            await writer.write(chunk)
class MapStorage(web.View):
    async def get(self):
        async with aiofiles.open("./public/v2/data_protected.bin", "rb") as f:
            data = await f.read()
        return web.Response(body=data, content_type="application/json")

    async def post(self):
        access_token = self.request.query.get("access_token")
        flash_token = self.request.query.get("flash_token")
        addr = self.request.headers.get("X-Forwarded-For")

        if access_token == "ABC-DEF-GHI":
            return web.Response(status=204)

        access_token = server.check_conn(access_token, addr, flash_token=flash_token)
        if access_token is None:
            raise web.HTTPBadRequest()
        elif access_token is False:
            raise web.HTTPUnauthorized()

        data = await self.request.post()
        code, info = data.get("code"), data.get("info")

        method = self.request.query.get("method")

        if infrastructure.tokens[access_token]["level"] in infrastructure.config["storage_allowed_levels"]:
            _map = client.find_map_by_key(infrastructure.tokens[access_token]["key"])
            if _map:
                if method in ("del", "save"):
                    if code:
                        data_decoded = cryptjson.text_decode(_map.data) if _map.data else b""
                        _search = re.search(b"%s:([^#]*)" % code.encode(), data_decoded)

                        if method == "save":
                            if info:
                                if _search:
                                    data_decoded = data_decoded.replace(
                                        _search.group(),
                                        b"%s:%s" % (code.encode(), cryptjson.text_decode(info))
                                    )
                                else:
                                    data_decoded += b"#%s:%s" % (code.encode(), cryptjson.text_decode(info))
                            else:
                                raise web.HTTPBadRequest()
                        elif method == "del":
                            if _search:
                                data_decoded = data_decoded.replace(_search.group(), b"")

                        _map.data = cryptjson.text_encode(map_pattern2.sub(
                            b"", data_decoded.replace(b"##", b"#")))
                        client.commit()

                        raise web.HTTPNoContent()
                raise web.HTTPBadRequest()
        raise web.HTTPForbidden()
