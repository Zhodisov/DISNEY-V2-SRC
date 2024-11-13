from aiohttp import web
import api

class TfmKeys(web.View):
    async def get(self):
        response = {}
        response.update(api.parser.fetched)
        return response
