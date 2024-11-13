from discord.ext import commands
from discord import Embed
from typing import ByteString, Optional
from utils import cryptjson
import aiofiles
import infrastructure
import secrets
from data import client

class Admin(commands.Cog, name="admin"):

    def __init__(self, bot: commands.Bot):
        self.bot: commands.Bot = bot
        self.map_data: ByteString = b""

    async def cog_after_invoke(self, ctx):
        if not ctx.command_failed and ctx.channel.id != infrastructure.config["discord_priv_channel2"]:
            keys = getattr(ctx, "_keys", None)
            keys_msg = f" | Key generated: `{', '.join(keys)}`" if keys else ""
            await self.bot.priv_channel.send(f"`{ctx.author}` used the command: `{ctx.message.content}`{keys_msg}")

    @commands.command(help="Generate a specific key")
    async def setkey(self, ctx, key: str, level: Optional[str] = "GOLD_II"):
        client.set_user(key, level)
        await ctx.reply(f"New key generated: `{key}`")

    @commands.command(help="Add maps to the key")
    async def setmaps(self, ctx, *args):
        if not self.map_data:
            async with aiofiles.open("./public/maps.json", "rb") as f:
                self.map_data = await f.read()

        result = []
        for key in args:
            if client.find_map_by_key(key, check_exists=True) is None:
                client.set_map(key, self.map_data)
                result.append(key)
        if result:
            await ctx.reply(f"Maps added: `{', '.join(result)}`")

    @commands.command(hidden=True)
    async def hidekey(self, ctx, key: str, state: Optional[bool] = True):
        if (user := client.find_user_by_key(key)) is not None:
            user.key_hidden = state
            client.commit()
            await ctx.reply(f"Key hidden status: `{state}`")
        else:
            await ctx.reply("Key not found")

    @commands.command(help="Delete key")
    async def delkey(self, ctx, *args):
        result = []
        for key in args:
            if (user := client.find_user_by_key(key, check_exists=True)) is not None:
                client.delete(user)
                result.append(key)
        if result:
            client.commit()
            await ctx.reply(f"Keys deleted: `{', '.join(result)}`")

    @commands.command(hidden=True, help="Delete maps from the key")
    async def delmaps(self, ctx, *args):
        result = []
        for key in args:
            if (map_obj := client.find_map_by_key(key, check_exists=True)) is not None:
                client.delete(map_obj)
                result.append(key)
        if result:
            client.commit()
            await ctx.reply(f"Maps deleted: `{', '.join(result)}`")

    @commands.command(hidden=True, help="Reset maps of the key")
    async def resetmaps(self, ctx, *args):
        result = []
        for key in args:
            if (map_obj := client.find_map_by_key(key)) is not None:
                map_obj.data = b""
                result.append(key)
        if result:
            client.commit()
            await ctx.reply(f"Maps reset: `{', '.join(result)}`")

    @commands.command(help="Transfer maps from one key to another")
    async def transfermaps(self, ctx, _from: str, to: str):
        if (from_user := client.find_user_by_key(_from)) is not None:
            if (from_maps := client.find_map_by_key(_from)) is not None:
                if (user := client.find_user_by_key(to)) is not None:
                    client.set_map(to, from_maps.data)
                    await ctx.message.add_reaction("✅")
                else:
                    await ctx.reply(f"Key `{to}` not found")
            else:
                await ctx.reply(f"Key `{_from}` has no maps")
        else:
            await ctx.reply(f"Key `{_from}` not found")

    @commands.command(help="Transfer soft mode maps from one key to another")
    async def transfersoft(self, ctx, _from: str, to: str):
        if _from in infrastructure.config["soft_forbidden_keys"]:
            for role in ctx.author.roles:
                if role.id == infrastructure.config["discord_major_role_id"]:
                    break
            else:
                await ctx.reply(f"Key `{_from}` not found")
                return

        if (from_user := client.find_user_by_key(_from)) is not None:
            if (from_soft := client.find_soft_by_key(_from)) is not None:
                if (user := client.find_user_by_key(to)) is not None:
                    if user.level == "PLATINUM":
                        client.set_soft(to, from_soft.data)
                        await ctx.message.add_reaction("✅")
                    else:
                        await ctx.reply(f"Key `{to}` does not have the required level for soft maps")
                else:
                    await ctx.reply(f"Key `{to}` not found")
            else:
                await ctx.reply(f"Key `{_from}` has no soft maps")
        else:
            await ctx.reply(f"Key `{_from}` not found")

    @commands.command(hidden=True)
    async def lssoft(self, ctx, key: Optional[str] = "all"):
        embed = Embed(title=f"Soft list - {key}")
        if key == "all":            
            embed.description = "\n".join([f"{soft.key} - {'empty' if not (maps_len := len(cryptjson.json_unzip(soft.data))) and soft.data else '{} maps'.format(maps_len)}" for soft in client.load_soft()])
        elif (soft := client.find_soft_by_key(key)) is not None:
            embed.description = f"{maps_len} maps" if (maps_len := len(cryptjson.json_unzip(soft.data))) and soft.data else "empty"
        await ctx.reply(embed=embed)

    @commands.command(help="Reset key config")
    async def resetconfig(self, ctx, key: str):
        client.set_config(key, None)
        await ctx.message.add_reaction("✅")

    @commands.command(hidden=True)
    async def resetbrowser(self, ctx, key: str):
        if client.set_user_browser_token(key) is not None:
            await ctx.message.add_reaction("✅")
        else:
            await ctx.reply("Key not found")

    @commands.command(hidden=True)
    async def resetflash(self, ctx, key: str):
        if client.set_flash_token(key) is not None:
            await ctx.message.add_reaction("✅")
        else:
            await ctx.reply("Key not found")

    @commands.command(help="Grant permission for the key to be used in a browser")
    async def setbrowserperm(self, ctx, key: str, perm: Optional[bool] = True):
        if (user := client.find_user_by_key(key)) is not None:
            user.browser_access = perm
            client.commit()
            await ctx.message.add_reaction("✅")
        else:
            await ctx.reply(f"Key not found")

    @commands.command(help="Reset soft maps of the key")
    async def resetsoft(self, ctx, *args):
        result = []
        for key in args:
            if (soft := client.find_soft_by_key(key)) is not None:
                soft.data = b""
                result.append(key)
        if result:
            client.commit()
            await ctx.reply(f"Soft maps reset: `{', '.join(result)}`")

    @commands.command(help="Change key's IP limit")
    async def setconnlimit(self, ctx, key: str, limit: Optional[int] = 2):
        if (user := client.find_user_by_key(key)) is not None:
            user.connection_limit = limit if limit > 0 else 1
            client.commit()
            await ctx.message.add_reaction("✅")
        else:
            await ctx.reply("Key not found")

    @commands.command(help="Remove login block from another device")
    async def nolimit(self, ctx, key: str, limit: Optional[bool] = False):
        if (user := client.find_user_by_key(key)) is not None:
            user.unknown_device_block = limit
            client.commit()
            await ctx.message.add_reaction("✅")
        else:
            await ctx.reply("Key not found")

    @commands.command(hidden=True)
    async def delunusedmaps(self, ctx):
        result = []
        for map_obj in client.load_maps(only_keys=True):
            if client.find_user_by_key((key := map_obj.key)) is None:
                client.delete(map_obj)
                result.append(key)
        if result:
            client.commit()
            await ctx.reply(f"Maps deleted: `{', '.join(result)}`")

    @commands.command(hidden=True)
    async def delunusedsoft(self, ctx):
        result = []
        for soft in client.load_soft(only_keys=True):
            if client.find_user_by_key((key := soft.key)) is None:
                client.delete(soft)
                result.append(key)
        if result:
            client.commit()
            await ctx.reply(f"Soft maps deleted: `{', '.join(result)}`")

    @commands.command(help="Generate new key", usage="`newkey [quantity] [level]`")
    async def newkey(self, ctx, quant: Optional[int] = 1, level: Optional[str] = "GOLD_II"):
        keys = []
        for _ in range(quant):
            while True:
                key = secrets.token_hex(4)
                if client.find_user_by_key(key) is None:
                    client.set_user(key=key, level=level)
                    keys.append(key)
                    break
        setattr(ctx, "_keys", keys)
        await ctx.reply(f"New key generated: `{', '.join(keys)}`")

    @commands.command(help="Reset key access")
    async def resetkey(self, ctx, key: str):
        if (user := client.find_user_by_key(key)) is not None:
            user.browser_access = True
            user.browser_access_token = None
            user.flash_token = None
            client.commit()
            await ctx.message.add_reaction("✅")
        else:
            await ctx.reply("Key not found")

    @commands.command(hidden=True)
    async def resetallkeys(self, ctx):
        for user in client.load_users():
            user.browser_access = True
            user.browser_access_token = None
            user.flash_token = None
        client.commit()
        await ctx.message.add_reaction("✅")

    @commands.command(help="Show the last login of the key on the website")
    async def lastlogin(self, ctx, key: str):
        if (user := client.find_user_by_key(key)) is not None:
            await ctx.reply(f"Last login: {user.last_login}")
        else:
            await ctx.reply("Key not found")

async def setup(bot):
    await bot.add_cog(Admin(bot))
