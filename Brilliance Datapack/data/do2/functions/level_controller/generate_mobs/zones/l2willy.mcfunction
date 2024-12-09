# Setup
execute store result score $dungeon do2.utility.mc.mobNamesCount run data get storage do2:mobs level2_willy
scoreboard players operation $dungeon do2.utility.mc.mobGenerationCount = $l2willy do2.config.mc.levelZoneMobCount
data modify storage do2:mobs mobNames set from storage do2:mobs level2_willy

# - Check for issues -
# Check for mob AMOUNT count
execute if score $l2willy do2.config.mc.levelZoneMobCount matches ..0 if score $dungeon do2.utility.mc.collectingLogs matches 1 run data modify storage do2:mobs mobCountErrors append value 'L2WILLY'
execute if score $l2willy do2.config.mc.levelZoneMobCount matches ..0 if score $dungeon do2.utility.mc.collectingLogs matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: L2WILLY's mob count is empty. No mobs will generate in this zone."}]
execute if score $l2willy do2.config.mc.levelZoneMobCount matches ..0 run scoreboard players set $l2willy do2.config.mc.levelZoneMobCount 0
# Check for sufficient mob NAMES
execute if score $dungeon do2.utility.mc.mobNamesCount < $l2willy do2.config.mc.levelZoneMobCount if score $dungeon do2.utility.mc.collectingLogs matches 1 run data modify storage do2:mobs mobNameCountErrors append value 'L2WILLY'
execute if score $dungeon do2.utility.mc.mobNamesCount < $l2willy do2.config.mc.levelZoneMobCount if score $dungeon do2.utility.mc.collectingLogs matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Not enough L2WILLY's mob names for L2WILLY's mob count. Adding random names to fix."}]
execute if score $dungeon do2.utility.mc.mobNamesCount < $l2willy do2.config.mc.levelZoneMobCount run function do2:level_controller/add_mob_names/drowned_names

# Generate enough mobs.
scoreboard players set $dungeon do2.utility.mc.mobGenerationType 3
function do2:level_controller/generate_mobs/generate_enough_mobs

# Finish
execute as @e[tag=newly_generated_mob] run tp @s @e[type=marker,tag=L2WILLY,limit=1,sort=random]
execute as @e[tag=newly_generated_mob] run tag @s add L2WILLY
execute as @e[tag=newly_generated_mob] run tag @s remove newly_generated_mob