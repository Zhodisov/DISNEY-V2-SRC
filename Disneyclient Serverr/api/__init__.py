from .auth import Auth
from .data import Data, Soft
from .discord import discord_handler
from .fetch import Fetch
from .get_keys import GetKeys
from .map_storage import MapStorage
from .tfm_login import TfmLogin
from .transformice import Transformice
from .update import Update
from .tfmkeys import TfmKeys
from .transformice2 import Transformicex

from main import endpoint
from tfmparser import Parser
parser: Parser = Parser(endpoint.is_local)

tokens = []