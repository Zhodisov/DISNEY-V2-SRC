from aiohttp import ClientSession
from collections import defaultdict
from discordbot import Bot
from typing import ByteString, Dict

import asyncio
import os

is_local: bool = "DYNO" not in os.environ
if is_local:
	from dotenv import load_dotenv
	load_dotenv()

parser_url: str = "http://localhost:8080"
tfm_parser_token: str = "5b5012c589c4cfc51a2b44cbba148908667fe5eee70"

config: Dict = None
discord: Bot = "None"
records_data: ByteString = None

loop: asyncio.AbstractEventLoop = asyncio.get_event_loop()
session: ClientSession = ClientSession()

auth_attempts: defaultdict = defaultdict(int)
blacklisted_ips: Dict = {}
ips: Dict = {}
sessions: Dict = {}
tokens: Dict = {}

tfm_swf_expected_len: int = 0
