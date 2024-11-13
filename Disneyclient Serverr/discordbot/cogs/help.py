from discord.ext import commands
from discord import Color, Embed
from typing import Optional

class Help(commands.Cog, name="help"):
    def __init__(self, bot: commands.Bot) -> None:
        self.bot: commands.Bot = bot
        self.hidden: bool = True

    @commands.command()
    async def help(self, ctx, cog: Optional[str] = None):
        prefix = self.bot.command_prefix
        embed = Embed(
            title=f"Command list. Prefix: `{prefix}`",
            color=Color.blue(),
            description=f"Use `{prefix}help <category>` for more information "
                        "about a category"
        )

        if isinstance(cog, str):
            cog_obj = self.bot.get_cog(cog)
            if cog_obj:
                embed = Embed(
                    title=f"{cog_obj.qualified_name} - Commands",
                    color=Color.dark_blue(), description=cog_obj.__doc__)

                for command in cog_obj.get_commands():
                    if not command.hidden:
                        if command.aliases:
                            aliases = " or {}".format(" or ".join(
                                        (
                                            f"`{prefix}{alias}`"
                                            for alias in command.aliases
                                        )))
                        else:
                            aliases = ""

                        embed.add_field(name=f"`{prefix}{command.name}`{aliases}",
                                        value=command.help)
            else:
                command = self.bot.get_command(cog)
                if command:
                    embed = Embed(
                        title=f"{command.qualified_name}",
                        color=Color.dark_blue(), description=command.help or "No description")
                    if command.aliases:
                        embed.add_field(
                            name=f"Aliases",
                            value=', '.join(
                                (f"`{prefix}{alias}`" for alias in command.aliases)
                            ))
                    if command.cog_name:
                        embed.add_field(name="Category", value=command.cog_name)
                    if command.usage:
                        embed.add_field(name="Usage", value=command.usage)
                else:
                    embed.description = f"Category or command `{cog}` not found."

        if not embed.fields:
            cogs_desc = "\n".join(
                (
                    f"`{cog}` {self.bot.get_cog(cog).__doc__}"
                    for cog in self.bot.cogs if not getattr(
                        self.bot.get_cog(cog), "hidden", False
                    )
                )
            )

            embed.add_field(name="Categories", value=cogs_desc)
        await ctx.send(embed=embed)

async def setup(bot):
    await bot.add_cog(Help(bot))
