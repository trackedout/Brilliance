scoreboard objectives add do2.tests.amountOfMobsExists dummy


# Death Room Ravager
scoreboard players set $dungeon do2.tests.amountOfMobsExists 0
execute as @e[type=ravager,tag=L0DEATHROOM] run scoreboard players add $dungeon do2.tests.amountOfMobsExists 1
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run kill @e[type=ravager,tag=L0DEATHROOM]
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run summon minecraft:ravager -632 -48 1990 {PersistenceRequired:1b, Tags: ["L0DEATHROOM"], Invulnerable: 1b,  Health: 100f, CustomName: '{"text":"nothing, they survived Decked Out"}', Fire: -1s}

# Agronet event
function do2:external/agronet/logs/entity_testing/axolotls


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
