execute if entity @s[tag=do2.staff] run return 0
execute if entity @p[team=do2.players] run return 0

# Need to check if ONE tag is not existing. Best way I could do this:
scoreboard objectives add do2.tests.playerInLocation dummy
scoreboard players set @s do2.tests.playerInLocation 0

execute if entity @s[x=-545,dx=54,y=112,dy=10,z=1974,dz=11] run scoreboard players set @s do2.tests.playerInLocation 1
execute if entity @s[x=-565,dx=23,y=111,dy=7,z=1974,dz=11] run scoreboard players set @s do2.tests.playerInLocation 1
execute if entity @s[x=-490,dx=5,y=113,dy=5,z=1974,dz=11] run scoreboard players set @s do2.tests.playerInLocation 1


execute if score @s do2.tests.playerInLocation matches 0 run tp @s -524 114 1980
execute if score @s do2.tests.playerInLocation matches 0 run tellraw @s "Unable to leave lobby as a spectator."
