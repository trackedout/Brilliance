# When a yeti event pops up for the player.

# - Start Log -
tag @s add dyingLogTarget
execute as @a[scores={do2.logs.player_actions=3..}] run tellraw @s ["",{"text":"[§9B§r]: Yeti Appeared"}]
tag @s add dyingLogTarget
# - End Log -
