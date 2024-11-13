from discord import Embed, Intents
from discord.ext import commands
from typing import Dict, Optional
import discord
import infrastructure
import os

intents = discord.Intents.all()
intents.messages = True
intents.guilds = True

class Bot(commands.Bot):
    def __init__(self, command_prefix="!"):
        super().__init__(command_prefix, intents=intents)
        
        self.cogs_loaded = False
        self.discord_names = None
        self.log_channel = None
        self.log_channel2 = None
        self.priv_channel = None

        self.add_listener(self.on_ready, "on_ready")
        self.remove_command("help")


    async def on_ready(self):

        if not self.cogs_loaded:
            await self.load_cogs()
            self.cogs_loaded = True

    async def load_cogs(self):
        cogs_path = os.path.join(os.path.dirname(__file__), "cogs")


        for file in os.listdir(cogs_path):
            if file.endswith(".py") and not file.startswith("_"):
                extension = f"discordbot.cogs.{file[:-3]}"
                if extension in self.extensions:
                    continue
                try:
                    await self.load_extension(extension)
                except Exception as e:
                    print(f"Err : {e}")

        await self.setup_ready()

    async def setup_ready(self):
        self.discord_names = [str(await self.fetch_user(_id)) for _id in infrastructure.config["discord_admins"]]
        self.log_channel = self.get_channel(infrastructure.config["discord_log_channel"])
        self.log_channel2 = self.get_channel(infrastructure.config["discord_log_channel2"])
        self.priv_channel = self.get_channel(infrastructure.config["discord_priv_channel"])

    async def log(self, method: str, response: Dict, status: int, addr: Optional[str] = None, key: Optional[str] = None, token: Optional[str] = None, browser: Optional[str] = None):
        if self.log_channel:
            access_token = response.get("access_token") or token
            sleep = f"(:timer: {response.get('sleep', 0)} min)"
            success = status == 200
            error = response.get('error')
            embed = Embed(
                title=f"Log - {method}",
                description=(
                    f":computer: IP address: {addr}\n"
                    f":mag: Browser: {browser}\n"
                    f":placard: Status: {status} {':white_check_mark:' if success else ':x:'}\n"
                    f":warning: Error: {error}\n\n"
                    f":credit_card: Key: {key}\n"
                    f":credit_card: Token: {access_token} {sleep if response.get('sleep') is not None else ''}"
                ),
                colour=0x00FF00 if success and error is None else 0xFF0000
            )
            await self.log_channel.send(embed=embed)
        else:
            print("[Discord] Invalid channel")

    async def log2(self, username: str, key: str, token: str):
        if self.log_channel2:
            await self.log_channel2.send(f"Account `{username}` connected using token `{token}` of key `{key}`")
        else:
            print("[Discord] Invalid channel (2)")


