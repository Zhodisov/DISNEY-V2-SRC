from aiohttp import web
from data import client

import aiofiles
import infrastructure
import server
import ujson

class Data(web.View):
    async def get(self):
        body = b""
        if self.request.query.get("soft") is not None:
            async with aiofiles.open("./public/v2/data_soft.bin", "rb") as f:
                body = await f.read()
        elif self.request.query.get("protected") is not None:
            async with aiofiles.open("./public/v2/data_protected.bin", "rb") as f:
                body = await f.read()
        elif self.request.query.get("config") is not None:
            async with aiofiles.open("./public/v2/data_config.bin", "rb") as f:
                body = await f.read()
        elif self.request.query.get("record_list") is not None:
            async with aiofiles.open("./public/v2/data_record.bin", "rb") as f:
                body = await f.read()
        return web.Response(body=body, content_type="application/json")

    async def post(self):
        raise web.HTTPNoContent()

class Soft(web.View):
    async def get(self):
        return web.FileResponse("./public/soft/index.html")