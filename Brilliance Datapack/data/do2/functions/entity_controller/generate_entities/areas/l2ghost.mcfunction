# - Start Log -
execute as @a[scores={do2.logs.entity_controller=2..}] run tellraw @s ["",{"text":"[§9B§r]: Creating all §bL2GHOST§r entities."}]
# - End Log -

# Setup
execute store result score $dungeon do2.utility.ec.mobNamesCount run data get storage do2:mobs level2_ghost
scoreboard players operation $dungeon do2.utility.ec.mobGenerationCount = $l2ghost do2.config.ec.levelZoneMobCount
data modify storage do2:mobs mobNames set from storage do2:mobs level2_ghost
scoreboard players set $dungeon do2.utility.ec.mobGenerationType 5
# Unique setup to the ghosts
execute positioned -576 13 1984 as @e[type=minecart] unless data entity @s Passengers[0] run kill @s

# - Check for issues -
# Check for mob AMOUNT count
execute if score $l2ghost do2.config.ec.levelZoneMobCount matches ..0 if score $dungeon do2.utility.ec.collectingLogs matches 1 run data modify storage do2:mobs mobCountErrors append value 'L2GHOST'
execute if score $l2ghost do2.config.ec.levelZoneMobCount matches ..0 if score $dungeon do2.utility.ec.collectingLogs matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: L2GHOST's mob count is empty. No mobs will generate in this zone."}]
execute if score $l2ghost do2.config.ec.levelZoneMobCount matches ..0 run scoreboard players set $l2ghost do2.config.ec.levelZoneMobCount 0
# Check for sufficient mob NAMES
execute if score $dungeon do2.utility.ec.mobNamesCount < $l2ghost do2.config.ec.levelZoneMobCount if score $dungeon do2.utility.ec.collectingLogs matches 1 run data modify storage do2:mobs mobNameCountErrors append value 'L2GHOST'
execute if score $dungeon do2.utility.ec.mobNamesCount < $l2ghost do2.config.ec.levelZoneMobCount if score $dungeon do2.utility.ec.collectingLogs matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Not enough L2GHOST's mob names for L2GHOST's mob count. Adding random names to fix."}]
execute if score $dungeon do2.utility.ec.mobNamesCount < $l2ghost do2.config.ec.levelZoneMobCount run function do2:entity_controller/config_interface/add_mob_names/add_name_to_list

# Generate enough mobs.
execute as @e[type=stray,tag=L2GHOST] run tag @s add already_generated_mob
function do2:entity_controller/generate_entities/kill_extra_mobs
function do2:entity_controller/generate_entities/generate_enough_mobs

# Finish
execute as @e[tag=newly_generated_minecart] run tp @s @e[type=marker,tag=L2GHOST,limit=1,sort=random]
execute as @e[tag=newly_generated_minecart] run tag @s remove newly_generated_mob
execute as @e[tag=newly_generated_mob] run tag @s add L2GHOST
execute as @e[tag=newly_generated_mob] run tag @s remove newly_generated_mob
execute if score $dungeon do2.config.fr.teleportKillers matches 1 as @e[tag=premade_generated_mob] at @s as @e[type=minecart,distance=..1] run tp @s @e[type=marker,tag=L2GHOST,limit=1,sort=random]
execute as @e[tag=premade_generated_mob] run tag @s add L2GHOST
execute as @e[tag=premade_generated_mob] run tag @s remove premade_generated_mob
