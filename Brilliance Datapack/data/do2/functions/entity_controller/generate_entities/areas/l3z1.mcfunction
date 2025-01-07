# - Start Log -
execute as @a[scores={do2.logs.entity_controller=2..}] run tellraw @s ["",{"text":"[§9B§r]: Creating all §bL3Z1§r entities."}]
# - End Log -

# Setup
execute store result score $dungeon do2.utility.ec.mobNamesCount run data get storage do2:mobs level3_zone1
scoreboard players operation $dungeon do2.utility.ec.mobGenerationCount = $l3z1 do2.config.ec.levelZoneMobCount
data modify storage do2:mobs mobNames set from storage do2:mobs level3_zone1
scoreboard players set $dungeon do2.utility.ec.mobGenerationType 2

# - Check for issues -
# Check for mob AMOUNT count
execute if score $l3z1 do2.config.ec.levelZoneMobCount matches ..0 if score $dungeon do2.utility.ec.collectingLogs matches 1 run data modify storage do2:mobs mobCountErrors append value 'L3Z1'
execute if score $l3z1 do2.config.ec.levelZoneMobCount matches ..0 if score $dungeon do2.utility.ec.collectingLogs matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: L3Z1's mob count is empty. No mobs will generate in this zone."}]
execute if score $l3z1 do2.config.ec.levelZoneMobCount matches ..0 run scoreboard players set $l3z1 do2.config.ec.levelZoneMobCount 0
# Check for sufficient mob NAMES
execute if score $dungeon do2.utility.ec.mobNamesCount < $l3z1 do2.config.ec.levelZoneMobCount if score $dungeon do2.utility.ec.collectingLogs matches 1 run data modify storage do2:mobs mobNameCountErrors append value 'L3Z1'
execute if score $dungeon do2.utility.ec.mobNamesCount < $l3z1 do2.config.ec.levelZoneMobCount if score $dungeon do2.utility.ec.collectingLogs matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Not enough L3Z1's mob names for L3Z1's mob count. Adding random names to fix."}]
execute if score $dungeon do2.utility.ec.mobNamesCount < $l3z1 do2.config.ec.levelZoneMobCount run function do2:mob_controller/add_mob_names/add_name_to_list

# Generate enough mobs.
execute as @e[type=warden,tag=L3Z1] run tag @s add already_generated_mob
function do2:entity_controller/generate_mobs/kill_extra_mobs
function do2:mob_controller/generate_mobs/generate_enough_mobs

# Finish
execute as @e[tag=newly_generated_mob] run tp @s @e[type=marker,tag=L3Z1,limit=1,sort=random]
execute as @e[tag=newly_generated_mob] run tag @s add L3Z1
execute as @e[tag=newly_generated_mob] run tag @s remove newly_generated_mob
execute if score $dungeon do2.config.fr.teleportKillers matches 1 as @e[tag=premade_generated_mob] run tp @s @e[type=marker,tag=L3Z1,limit=1,sort=random]
execute as @e[tag=premade_generated_mob] run tag @s add L3Z1
execute as @e[tag=premade_generated_mob] run tag @s remove premade_generated_mob
