# TangoCam (just in case)
execute unless entity @e[type=minecraft:player,name=tangocam] unless entity @e[type=minecraft:player,name=TangoCam] run function do2:external/carpet_mod/summon_tangocam

# Uncategorized Entities
function do2:entity_controller/generate_entities/other_entities/gameplay_entities

# Evokers
function do2:entity_controller/generate_entities/evokers/test_for_all_evokers

# Axolotls
function do2:entity_controller/generate_entities/other_entities/axolotls

# Fun mobs
function do2:entity_controller/generate_entities/other_entities/fun_mobs

# Interaction Entities
function do2:entity_controller/generate_entities/other_entities/interaction_entities


# Todo: do checks for remainders... skeleton & endermites
scoreboard objectives remove do2.tests.amountOfMobsExists
