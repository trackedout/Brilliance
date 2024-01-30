# Ran when a Frost Embers dropper is activated.
# - Start Log -
execute as @a[scores={do2.logs.embers=3..}] run tellraw @s ["",{"text":"[§9B§r]: Frost Embers dropped. "}]
# - End Log -

# TODO: not yet implemented in game.
