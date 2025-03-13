execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.2
tellraw @s "Returned museum"
place template do2:world_setup/museum_tower_returned -615 148 2026
# Museum template at max size, so instead of saving a 2nd structure
# Just place down the remaining blocks
setblock -609 196 2041 minecraft:iron_bars replace
setblock -600 196 2050 minecraft:iron_bars replace
setblock -591 196 2041 minecraft:iron_bars replace
setblock -600 196 2032 minecraft:iron_bars replace
