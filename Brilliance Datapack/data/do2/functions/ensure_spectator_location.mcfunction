execute if entity @s[tag=do2.staff] run return 0
execute if entity @p[team=do2.players] run return 0
execute if score $dungeon do2.run.active matches 2.. run return 0

# Need to check if ONE tag is not existing. Best way I could do this:
scoreboard objectives add do2.tests.playerInLocation dummy
scoreboard players set @s do2.tests.playerInLocation 0

execute if entity @s[x=-539.7,dx=47.4,y=113.25,dy=6.05,z=1975.3,dz=9.4] run scoreboard players set @s do2.tests.playerInLocation 1
execute if entity @s[x=-561.7,dx=20.4,y=113.25,dy=1.05,z=1975.3,dz=8.4] run scoreboard players set @s do2.tests.playerInLocation 1
execute if entity @s[x=-490.7,dx=3.4,y=113.25,dy=2.05,z=1975.3,dz=9.4] run scoreboard players set @s do2.tests.playerInLocation 1

execute if score @s do2.tests.playerInLocation matches 0 run tp @s -524 114 1980
execute if score @s do2.tests.playerInLocation matches 0 run tellraw @s "Unable to leave lobby as a spectator."
