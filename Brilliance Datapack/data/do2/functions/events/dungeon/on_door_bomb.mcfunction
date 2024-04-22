# - Start Log -
execute as @a[scores={do2.logs.player_actions=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Player submitted bomb. "}]
# - End Log -

advancement grant @a[tag=do2.running] only do2:hidden/adventuring/open_basalt_door
