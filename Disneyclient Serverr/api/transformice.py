from aiohttp import web
import aiofiles
import asyncio
import os


class Transformice(web.View):
    async def get(self):
        if self.request.query.get("swf") is not None:
            async with aiofiles.open("./tfm.swf", "rb") as f:
                data = await f.read()
                return web.Response(body=data, content_type="application/x-shockwave-flash")
        
        if os.path.isfile("./public/ChargeurTransformice.swf"):
            return web.FileResponse("./public/ChargeurTransformice.swf")
        return web.FileResponse("./public/invalid.swf")