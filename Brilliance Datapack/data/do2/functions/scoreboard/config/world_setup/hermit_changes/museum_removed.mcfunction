execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.2
tellraw @s "Removed museum"
place template do2:world_setup/museum_tower_removed -615 148 2026
kill @e[type=!player,x=-615,dx=29,y=148,dy=47,z=2026,dz=30]
# Museum template at max size, so instead of saving a 2nd structure
# Just remove the remaining blocks
setblock -609 196 2041 minecraft:air replace
setblock -600 196 2050 minecraft:air replace
setblock -591 196 2041 minecraft:air replace
setblock -600 196 2032 minecraft:air replace
