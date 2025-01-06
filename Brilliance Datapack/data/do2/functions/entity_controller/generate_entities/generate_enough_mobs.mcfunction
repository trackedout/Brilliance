# If no more mobs need to be made, return
execute if score $dungeon do2.utility.ec.mobGenerationCount matches ..0 run return 0

# Summon mob if no mob is being worked on.
execute as @e[tag=already_generated_mob,limit=1,sort=random] run tag @s add mob_being_worked_on
execute unless entity @e[tag=mob_being_worked_on] run function do2:entity_controller/generate_entities/summon_correct_mob
execute as @e[tag=already_generated_mob,tag=mob_being_worked_on] run tag @s add premade_generated_mob
execute as @e[tag=already_generated_mob,tag=mob_being_worked_on] run tag @s remove already_generated_mob

# Name that mob
function do2:entity_controller/generate_entities/name_current_mob

# Note a mob has been generated
tag @e[tag=mob_being_worked_on] remove mob_being_worked_on
scoreboard players remove $dungeon do2.utility.ec.mobGenerationCount 1

# delete testing items
execute if score $dungeon do2.utility.arrayIndex matches ..0 run data remove storage do2:utility array
execute if score $dungeon do2.utility.arrayIndex matches ..0 run data remove storage do2:tests newArray

# If more mobs need to be summoned, run this function again
execute if score $dungeon do2.utility.ec.mobGenerationCount matches 1.. run function do2:entity_controller/generate_entities/generate_enough_mobs
execute if score $dungeon do2.utility.ec.mobGenerationCount matches ..0 run scoreboard players set $dungeon do2.utility.ec.mobGenerationType 0
