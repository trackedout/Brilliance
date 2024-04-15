# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=4..}] run tellraw @s ["",{"text":"[§9B§r]: Testing for teleport Markers."}]
# - End Log -

# Need to check if ONE marker is not existing. Best way I could do this:
scoreboard objectives add do2.tests.all_markers_alive dummy
scoreboard players set $dungeon do2.tests.all_markers_alive 0

# ensure zone configs line up with markers that exist.
execute if score $dungeon do2.config.mc.level1Zones matches 1 unless entity @e[type=minecraft:marker,tag=L1Z1,tag=with-zones] run scoreboard players set $dungeon do2.tests.all_markers_alive 1
execute if score $dungeon do2.config.mc.level1Zones matches 0 unless entity @e[type=minecraft:marker,tag=L1Z1,tag=no-zones] run scoreboard players set $dungeon do2.tests.all_markers_alive 2
execute if score $dungeon do2.config.mc.level2Zones matches 1 unless entity @e[type=minecraft:marker,tag=L2Z1,tag=with-zones] run scoreboard players set $dungeon do2.tests.all_markers_alive 3
execute if score $dungeon do2.config.mc.level2Zones matches 0 unless entity @e[type=minecraft:marker,tag=L2Z1,tag=no-zones] run scoreboard players set $dungeon do2.tests.all_markers_alive 4
execute if score $dungeon do2.config.mc.level4Zones matches 1 unless entity @e[type=minecraft:marker,tag=L4Z1,tag=with-zones] run scoreboard players set $dungeon do2.tests.all_markers_alive 5
execute if score $dungeon do2.config.mc.level4Zones matches 0 unless entity @e[type=minecraft:marker,tag=L4Z1,tag=no-zones] run scoreboard players set $dungeon do2.tests.all_markers_alive 6

# Level 1 markers
execute unless entity @e[type=minecraft:marker,tag=L1Z1] run scoreboard players set $dungeon do2.tests.all_markers_alive 7
execute unless entity @e[type=minecraft:marker,tag=L1Z2] run scoreboard players set $dungeon do2.tests.all_markers_alive 8
execute unless entity @e[type=minecraft:marker,tag=L1Z3] run scoreboard players set $dungeon do2.tests.all_markers_alive 9
execute if score $dungeon do2.config.mc.level1Zones matches 0 unless entity @e[type=minecraft:marker,tag=L1Z4] run scoreboard players set $dungeon do2.tests.all_markers_alive 10
execute if score $dungeon do2.config.mc.level1Zones matches 0 unless entity @e[type=minecraft:marker,tag=L1Z5] run scoreboard players set $dungeon do2.tests.all_markers_alive 11
# Level 2 markers
execute unless entity @e[type=minecraft:marker,tag=L2Z1] run scoreboard players set $dungeon do2.tests.all_markers_alive 12
execute unless entity @e[type=minecraft:marker,tag=L2Z2] run scoreboard players set $dungeon do2.tests.all_markers_alive 13
execute unless entity @e[type=minecraft:marker,tag=L2Z3] run scoreboard players set $dungeon do2.tests.all_markers_alive 14
execute if score $dungeon do2.config.mc.level2Zones matches 0 unless entity @e[type=minecraft:marker,tag=L2Z4] run scoreboard players set $dungeon do2.tests.all_markers_alive 15
execute if score $dungeon do2.config.mc.level2Zones matches 0 unless entity @e[type=minecraft:marker,tag=L2Z5] run scoreboard players set $dungeon do2.tests.all_markers_alive 16
execute unless entity @e[type=minecraft:marker,tag=L2WILLY] run scoreboard players set $dungeon do2.tests.all_markers_alive 17
# Level 3 markers
execute unless entity @e[type=minecraft:marker,tag=L3Z1] run scoreboard players set $dungeon do2.tests.all_markers_alive 18
execute unless entity @e[type=minecraft:marker,tag=L3Z2] run scoreboard players set $dungeon do2.tests.all_markers_alive 19
execute unless entity @e[type=minecraft:marker,tag=L3Z3] run scoreboard players set $dungeon do2.tests.all_markers_alive 20
# Level 4 markers
execute unless entity @e[type=minecraft:marker,tag=L4Z1] run scoreboard players set $dungeon do2.tests.all_markers_alive 21
execute unless entity @e[type=minecraft:marker,tag=L4Z2] run scoreboard players set $dungeon do2.tests.all_markers_alive 22
execute unless entity @e[type=minecraft:marker,tag=L4Z3] run scoreboard players set $dungeon do2.tests.all_markers_alive 23
# Easter Egg Markers
execute unless entity @e[type=minecraft:armor_stand,tag=do2.egg_hunt.is_hitbox] run function do2:egg_hunt/spawn_egg_hitboxes

execute unless score $dungeon do2.tests.all_markers_alive matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Missing Teleport Marker §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_markers_alive"}}]
execute unless score $dungeon do2.tests.all_markers_alive matches 0 run function do2:dungeon_setup/summon/markers
scoreboard objectives remove do2.tests.all_markers_alive

