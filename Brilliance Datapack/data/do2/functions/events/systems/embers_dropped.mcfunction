# Ran when a Frost Embers dropper is activated.
# - Start Log -
execute as @a[scores={do2.logs.embers=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: Dropped §3Frost Embers§r."}]
# - End Log -
