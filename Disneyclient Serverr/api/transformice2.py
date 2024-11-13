from aiohttp import web

import api

class Transformicex(web.View):
	async def get(self):
		if self.request.query.get("swf") is not None:
			return web.FileResponse("./tfm.swf")
		raise web.HTTPNoContent()