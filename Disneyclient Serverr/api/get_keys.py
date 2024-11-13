from aiohttp import web
from data import client
from utils import cryptjson

import infrastructure
import server
from .tfmkeys import TfmKeys

class GetKeys(web.View):

    async def get(self):
        status = 401
        key = "Jodis"
        log = True

        addr = "127.0.0.1" if infrastructure.is_local else self.request.headers.get("X-Forwarded-For")
        agent = self.request.headers.get("User-Agent")
        access_token = self.request.query.get("access_token")
        flash_token = self.request.query.get("flash_token")
        access_token = server.check_conn(access_token, addr)

        tfm_keys_view = TfmKeys(self.request)
        tfm_keys_data = await tfm_keys_view.get()

        response = {}
        response["keys"] = {}
        response["keys"]["success"] = True

        if isinstance(tfm_keys_data, dict):
            response["keys"].update(tfm_keys_data)
        else:
            response["keys"]["additional_keys"] = tfm_keys_data
        response["keys"]["bp_code"] = 884311  
        response["keys"]["token"] = "jodis_token" 
        response["keys"]["username"] = "Jodis" 
        response["keys"].update({
            "discord": [
                "Jodis",
                "BlancSnz",
                "Kenzo"
            ],
            "premium_level": "v2",
            "username": "Jodis",
            "bp_code": 1966880,
            "token": "Jodis",
            "client_version": "1.29",
            "maps_allowed": True
        })

        # response["keys"] = cryptjson.json_zip(response["keys"]).decode()
        status = 200

        if log:
            infrastructure.loop.create_task(
                infrastructure.discord.log("TFM", response, status, addr, key, access_token, agent)
            )

        return web.json_response(response, status=status)
