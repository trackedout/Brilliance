# Setup
scoreboard players operation $dungeon do2.utility.mobGeneration = $dungeon do2.config.mc.level1Zone1MobCount
data modify storage do2:mobs mobNames set from storage do2:mobs level1_zone1

function do2:level_controller/generate_mobs/generate_a_mob

# Finish
execute as @e[tag=newly_generated_mob] run tp @s @e[type=marker,tag=L1Z1,limit=1,sort=random]
execute as @e[tag=newly_generated_mob] run tag @s add L1Z1
execute as @e[tag=newly_generated_mob] run tag @s remove newly_generated_mob
