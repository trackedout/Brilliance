# Setup
execute store result score $dungeon do2.utility.mc.mobNamesCount run data get storage do2:mobs level2_willie
scoreboard players operation $dungeon do2.utility.mc.mobGenerationCount = $l2willie do2.config.mc.levelZoneMobCount
data modify storage do2:mobs mobNames set from storage do2:mobs level2_willie
scoreboard players set $dungeon do2.utility.mc.mobGenerationType 3

# - Check for issues -
# Check for mob AMOUNT count
execute if score $l2willie do2.config.mc.levelZoneMobCount matches ..0 if score $dungeon do2.utility.mc.collectingLogs matches 1 run data modify storage do2:mobs mobCountErrors append value 'L2WILLIE'
execute if score $l2willie do2.config.mc.levelZoneMobCount matches ..0 if score $dungeon do2.utility.mc.collectingLogs matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: L2WILLIE's mob count is empty. No mobs will generate in this zone."}]
execute if score $l2willie do2.config.mc.levelZoneMobCount matches ..0 run scoreboard players set $l2willie do2.config.mc.levelZoneMobCount 0
# Check for sufficient mob NAMES
execute if score $dungeon do2.utility.mc.mobNamesCount < $l2willie do2.config.mc.levelZoneMobCount if score $dungeon do2.utility.mc.collectingLogs matches 1 run data modify storage do2:mobs mobNameCountErrors append value 'L2WILLIE'
execute if score $dungeon do2.utility.mc.mobNamesCount < $l2willie do2.config.mc.levelZoneMobCount if score $dungeon do2.utility.mc.collectingLogs matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Not enough L2WILLIE's mob names for L2WILLIE's mob count. Adding random names to fix."}]
execute if score $dungeon do2.utility.mc.mobNamesCount < $l2willie do2.config.mc.levelZoneMobCount run function do2:mob_controller/add_mob_names/add_name_to_list

# Generate enough mobs.
function do2:mob_controller/generate_mobs/generate_enough_mobs

# Finish
execute as @e[tag=newly_generated_mob] run tp @s @e[type=marker,tag=L2WILLIE,limit=1,sort=random]
execute as @e[tag=newly_generated_mob] run tag @s add L2WILLIE
execute as @e[tag=newly_generated_mob] run tag @s remove newly_generated_mob
