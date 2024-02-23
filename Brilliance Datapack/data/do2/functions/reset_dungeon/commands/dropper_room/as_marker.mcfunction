execute store result entity @s Pos[0] double 1 run scoreboard players get .x do2.utility.old_position.temp
execute store result entity @s Pos[1] double 1 run scoreboard players get .y do2.utility.old_position.temp
execute store result entity @s Pos[2] double 1 run scoreboard players get .z do2.utility.old_position.temp

execute positioned as @s run tp @a[tag=do2.awaiting_teleport,limit=1] ~.5 ~ ~.5

kill @s
