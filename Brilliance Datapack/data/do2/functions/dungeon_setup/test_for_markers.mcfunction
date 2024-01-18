# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Testing for teleport Markers."}]
# - End Log -

# Need to check if ONE marker is not existing. Best way I could do this:
scoreboard objectives add do2.tests.all_markers_alive dummy
scoreboard players set $dungeon do2.tests.all_markers_alive 1

# Check if Correct Ravager Zones Exist.
execute if score $dungeon do2.config.useRavagerZones matches 1 unless entity @e[type=minecraft:area_effect_cloud,tag=L1Z1,tag=with-zones] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.useRavagerZones matches 1 unless entity @e[type=minecraft:area_effect_cloud,tag=L2Z1,tag=with-zones] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.useRavagerZones matches 0 unless entity @e[type=minecraft:area_effect_cloud,tag=L1Z1,tag=no-zones] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.useRavagerZones matches 0 unless entity @e[type=minecraft:area_effect_cloud,tag=L2Z1,tag=no-zones] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
# Check if Correct Warden Zones Exist.
execute if score $dungeon do2.config.usWardenZones matches 1 unless entity @e[type=minecraft:area_effect_cloud,tag=L3Z1,tag=with-zones] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute if score $dungeon do2.config.usWardenZones matches 0 unless entity @e[type=minecraft:area_effect_cloud,tag=L3Z1,tag=no-zones] run scoreboard players set $dungeon do2.tests.all_markers_alive 0

# Level 1 markers
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L1Z1] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L1Z2] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L1Z3] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L1Z4] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L1Z5] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
# Level 2 markers
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L2Z1] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L2Z2] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L2Z3] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L2Z4] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L2Z5] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L2WILLY] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
# Level 3 markers
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L3Z1] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L3Z2] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L3Z3] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
# Level 4 markers
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L4Z1] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L4Z2] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=L4Z3] run scoreboard players set $dungeon do2.tests.all_markers_alive 0
# Easter Egg Markers
execute unless entity @e[type=minecraft:armor_stand,tag=do2.egg_hunt.is_hitbox] run function do2:egg_hunt/spawn_egg_hitboxes

execute unless score $dungeon do2.tests.all_markers_alive matches 1 run function do2:dungeon_setup/summon_markers
scoreboard objectives remove do2.tests.all_markers_alive

