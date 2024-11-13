from aiohttp import web


import infrastructure


async def discord_handler(request):
    return web.json_response({"names": ["BlancSnz", "Jodis"]})
