# - Start Log -
execute as @a[scores={do2.logs.entity_testing=2..}] run tellraw @s ["",{"text":"[§9B§r]: Testing for all §7Evokers§r."}]
# - End Log -

# Setup
scoreboard objectives add do2.tests.evokerCount dummy
scoreboard objectives add do2.tests.minecartCount dummy
data modify storage do2:mobs evokerTags set value ""

# Level 1
data modify storage do2:mobs evokerTags set value "L1E1"
execute positioned -550 52 1977 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
data modify storage do2:mobs evokerTags set value "L1E2"
execute positioned -545 45 1958 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker
data modify storage do2:mobs evokerTags set value "L1E3"
execute positioned -608 44 1979 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker
data modify storage do2:mobs evokerTags set value "L1E4"
execute positioned -579 46 1984 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker
data modify storage do2:mobs evokerTags set value "L1E5"
execute positioned -597 43 2015 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker
data modify storage do2:mobs evokerTags set value "L1E6"
execute positioned -619 43 2005 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker
data modify storage do2:mobs evokerTags set value "L1E7"
execute positioned -613 43 2027 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker
data modify storage do2:mobs evokerTags set value "L1E8"
execute positioned -562 47 2027 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker
data modify storage do2:mobs evokerTags set value "L1E9"
execute positioned -511 46 2025 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker
data modify storage do2:mobs evokerTags set value "L1E10"
execute positioned -503 52 1984 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
data modify storage do2:mobs evokerTags set value "L1E11"
execute positioned -509 52 1997 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
data modify storage do2:mobs evokerTags set value "L1E12"
execute positioned -528 52 1996 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
# New Level 1 evokers:
data modify storage do2:mobs evokerTags set value "L1E13"
execute positioned -527 52 2008 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
data modify storage do2:mobs evokerTags set value "L1E14"
execute positioned -520 52 1973 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
data modify storage do2:mobs evokerTags set value "L1E15"
execute positioned -536 56 1967 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker
data modify storage do2:mobs evokerTags set value "L1E16"
execute positioned -543 53 1979 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker
data modify storage do2:mobs evokerTags set value "L1E17"
execute positioned -587 46 2006 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker
data modify storage do2:mobs evokerTags set value "L1E18"
execute positioned -599 44 2037 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker

# Level 2
data modify storage do2:mobs evokerTags set value "L2E1"
execute positioned -578 13 1974 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker
data modify storage do2:mobs evokerTags set value "L2E2"
execute positioned -537 17 1957 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
data modify storage do2:mobs evokerTags set value "L2E3"
execute positioned -565 10 1949 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
data modify storage do2:mobs evokerTags set value "L2E4"
execute positioned -496 17 1991 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
data modify storage do2:mobs evokerTags set value "L2E5"
execute positioned -492 19 2024 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
data modify storage do2:mobs evokerTags set value "L2E6"
execute positioned -511 13 2015 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
data modify storage do2:mobs evokerTags set value "L2E7"
execute positioned -459 23 2017 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
data modify storage do2:mobs evokerTags set value "L2E8"
execute positioned -459 20 1978 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
data modify storage do2:mobs evokerTags set value "L2E9"
execute positioned -464 20 1961 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
data modify storage do2:mobs evokerTags set value "L2E10"
execute positioned -566 11 2021 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
# New Level 2 evokers:
data modify storage do2:mobs evokerTags set value "L2E11"
execute positioned -597 13 1955 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
data modify storage do2:mobs evokerTags set value "L2E12"
execute positioned -589 14 1985 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker
data modify storage do2:mobs evokerTags set value "L2E13"
execute positioned -528 13 1970 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker
data modify storage do2:mobs evokerTags set value "L2E14"
execute positioned -502 26 1967 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker
data modify storage do2:mobs evokerTags set value "L2E15"
execute positioned -510 25 1958 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker
data modify storage do2:mobs evokerTags set value "L2E16"
execute positioned -463 26 2008 run function do2:entity_controller/generate_entities/evokers/test_for_regular_evoker
data modify storage do2:mobs evokerTags set value "L2E17"
execute positioned -451 19 1957 run function do2:entity_controller/generate_entities/evokers/test_for_minecart_evoker

# Cleanup
data modify storage do2:mobs evokerTags set value ""

# Agronet event
function do2:external/agronet/logs/entity_testing/test_for_all_evokers