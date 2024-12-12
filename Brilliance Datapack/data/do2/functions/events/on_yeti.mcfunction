# When a regular yeti event pops up for the player.

# - Start Log -
execute as @a[scores={do2.logs.player_actions=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: Regular Yeti Appeared"}]
# - End Log -

advancement grant @a[team=do2.players] only do2:hidden/adventuring/yeti_scare
