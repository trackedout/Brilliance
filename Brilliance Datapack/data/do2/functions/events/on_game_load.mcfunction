# Ran when the shulkerbox is PUT into the system.
# - Start Log -
execute as @a[scores={do2.logs.gamestate=1..}] run tellraw @s ["",{"text":"[§9B§r]: Game has been activated. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rRedstone line to detect shulker box placing has been activated."}]}},{"text":")"}]
# - End Log -

# Bounds: (-565 118 1974) (-542 111 1985)
execute as @a[x=-565,dx=23,y=111,dy=7,z=1974,dz=11] run team join do2.players @s

# Set up specators
execute as @s[team=!do2.players] run team join do2.spectators @s
execute as @a[team=do2.spectators] run function do2:scoreboard/spectator_per_run



execute if score $dungeon do2.config.fastReset matches 1 run function do2:dungeon_setup/fast_reset

scoreboard players set $dungeon do2.utility.dungeonRepair 1
scoreboard players set $dungeon do2.run.players 0

