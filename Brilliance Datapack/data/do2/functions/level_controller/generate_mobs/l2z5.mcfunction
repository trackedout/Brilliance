# Check for issues
execute if score $l2z5 do2.config.mc.levelZoneMobCount matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: L2Z5's mob count is empty. No mobs will generate in this zone."}]
execute store result score $dungeon do2.utility.mobNamesCount run data get storage do2:mobs level2_zone5
execute if score $dungeon do2.utility.mobNamesCount matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: L2Z5's mob names are empty. Mob's names will be empty."}]
execute if score $dungeon do2.utility.mobNamesCount matches 0 run data modify storage do2:mobs level2_zone5 set value ['{"text":""}']

# Setup
scoreboard players operation $dungeon do2.utility.mobGeneration = $l2z5 do2.config.mc.levelZoneMobCount
data modify storage do2:mobs mobNames set from storage do2:mobs level2_zone5

function do2:level_controller/generate_mobs/generate_a_ravager

# Finish
execute as @e[tag=newly_generated_mob] run tp @s @e[type=marker,tag=L2Z5,limit=1,sort=random]
execute as @e[tag=newly_generated_mob] run tag @s add L2Z5
execute as @e[tag=newly_generated_mob] run tag @s remove newly_generated_mob
