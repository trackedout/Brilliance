execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.2
tellraw @s "Removed museum"
place template minecraft:museum_tower_removed -615 148 2026
kill @e[type=!player,x=-615,dx=29,y=148,dy=47,z=2026,dz=30]
