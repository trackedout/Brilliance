execute if score $dungeon do2.config.wc.queueExists matches 0 run tellraw @s "wc.queueExists = 0"
execute if score $dungeon do2.config.wc.queueExists matches 0 run return 0

# - Start Log -
execute as @a[scores={do2.logs.entity_controller=2..}] run tellraw @s ["",{"text":"[§9B§r]: Creating all §bL0Z2§r entities."}]
# - End Log -

# Setup
execute store result score $dungeon do2.utility.ec.mobNamesCount run data get storage do2:mobs level0_zone2
scoreboard players operation $dungeon do2.utility.ec.mobGenerationCount = $l0z2 do2.config.ec.levelZoneMobCount
data modify storage do2:mobs mobNames set from storage do2:mobs level0_zone2
scoreboard players set $dungeon do2.utility.ec.mobGenerationType 3

# - Check for issues -
# Check for mob AMOUNT count
execute if score $l0z2 do2.config.ec.levelZoneMobCount matches ..0 if score $dungeon do2.utility.ec.collectingLogs matches 1 run data modify storage do2:mobs mobCountErrors append value 'L0Z2'
execute if score $l0z2 do2.config.ec.levelZoneMobCount matches ..0 if score $dungeon do2.utility.ec.collectingLogs matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: L0Z2's mob count is empty. No mobs will generate in this zone."}]
execute if score $l0z2 do2.config.ec.levelZoneMobCount matches ..0 run scoreboard players set $l0z2 do2.config.ec.levelZoneMobCount 0
# Check for sufficient mob NAMES
execute if score $dungeon do2.utility.ec.mobNamesCount < $l0z2 do2.config.ec.levelZoneMobCount if score $dungeon do2.utility.ec.collectingLogs matches 1 run data modify storage do2:mobs mobNameCountErrors append value 'L0Z2'
execute if score $dungeon do2.utility.ec.mobNamesCount < $l0z2 do2.config.ec.levelZoneMobCount if score $dungeon do2.utility.ec.collectingLogs matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Not enough L0Z2's mob names for L0Z2's mob count. Adding random names to fix."}]
execute if score $dungeon do2.utility.ec.mobNamesCount < $l0z2 do2.config.ec.levelZoneMobCount run function do2:entity_controller/config_interface/add_mob_names/add_name_to_list

# Generate enough mobs.
execute as @e[type=drowned,tag=L0Z2] run tag @s add already_generated_mob
function do2:entity_controller/generate_entities/kill_extra_mobs
function do2:entity_controller/generate_entities/generate_enough_mobs

# Finish
execute as @e[tag=newly_generated_mob] run tp @s @e[type=marker,tag=L0Z2,limit=1,sort=random]
execute as @e[tag=newly_generated_mob] run tag @s add L0Z2
execute as @e[tag=newly_generated_mob] run tag @s remove newly_generated_mob
execute if score $dungeon do2.config.fr.teleportKillers matches 1 as @e[tag=premade_generated_mob] run tp @s @e[type=marker,tag=L0Z2,limit=1,sort=random]
execute as @e[tag=premade_generated_mob] run tag @s add L0Z2
execute as @e[tag=premade_generated_mob] run tag @s remove premade_generated_mob

# Agronet event
function do2:external/agronet/logs/entity_controller/areas/l0z2
