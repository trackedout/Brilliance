execute if score $dungeon do2.config.resetComposters matches 0 run return 0
# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Resetting Composters."}]
# - End Log -


setblock -517 14 1937 minecraft:composter[level=0]
setblock -522 14 1937 minecraft:composter[level=0]
setblock -530 14 1937 minecraft:composter[level=0]
setblock -516 14 1945 minecraft:composter[level=0]
