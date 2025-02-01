# - Start Log -
execute as @a[scores={do2.logs.entity_testing=1..}] run tellraw @s ["",{"text":"[§9B§r]: Testing for all §eAxolotls§r."}]
# - End Log -

# Lawrence Fletcher
scoreboard players set $dungeon do2.tests.amountOfMobsExists 0
execute as @e[type=axolotl,tag=AXO_1] run scoreboard players add $dungeon do2.tests.amountOfMobsExists 1
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run kill @e[type=axolotl,tag=AXO_1]
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run summon minecraft:axolotl -507 11 1993 {Tags: ["AXO_1","do2.manually_spawned"], CustomName: '{"text":"Lawrence Fletcher"}', Fire: -1s, Invulnerable: 1b, PersistenceRequired: 1b, FromBucket: 1b, Health: 14.0f, Variant: 2}

# Agronet event
function do2:external/agronet/logs/entity_testing/axolotls

# Linda Flynn-Fletcher
scoreboard players set $dungeon do2.tests.amountOfMobsExists 0
execute as @e[type=axolotl,tag=AXO_2] run scoreboard players add $dungeon do2.tests.amountOfMobsExists 2
execute unless score $dungeon do2.tests.amountOfMobsExists matches 2 run kill @e[type=axolotl,tag=AXO_2]
execute unless score $dungeon do2.tests.amountOfMobsExists matches 2 run summon minecraft:axolotl -512 11 1992 {Tags: ["AXO_2","do2.manually_spawned"], CustomName: '{"text":"Linda Flynn-Fletcher"}', Fire: -1s, Invulnerable: 1b, PersistenceRequired: 1b, FromBucket: 1b, Health: 14.0f, Variant: 0}

# Agronet event
function do2:external/agronet/logs/entity_testing/axolotls

# Perry
scoreboard players set $dungeon do2.tests.amountOfMobsExists 0
execute as @e[type=axolotl,tag=AXO_3] run scoreboard players add $dungeon do2.tests.amountOfMobsExists 1
execute unless score $dungeon do2.tests.amountOfMobsExists matches 3 run kill @e[type=axolotl,tag=AXO_3]
execute unless score $dungeon do2.tests.amountOfMobsExists matches 3 run summon minecraft:axolotl -509 11 1992 {Tags: ["AXO_3","do2.manually_spawned"], CustomName: '{"text":"Perry"}', Fire: -1s, Invulnerable: 1b, PersistenceRequired: 1b, FromBucket: 1b, Health: 14.0f, Variant: 1}

# Agronet event
function do2:external/agronet/logs/entity_testing/axolotls

# Candace
scoreboard players set $dungeon do2.tests.amountOfMobsExists 0
execute as @e[type=axolotl,tag=AXO_4] run scoreboard players add $dungeon do2.tests.amountOfMobsExists 4
execute unless score $dungeon do2.tests.amountOfMobsExists matches 4 run kill @e[type=axolotl,tag=AXO_4]
execute unless score $dungeon do2.tests.amountOfMobsExists matches 4 run summon minecraft:axolotl -510 12 1990 {Tags: ["AXO_4","do2.manually_spawned"], CustomName: '{"text":"Candace"}', Fire: -1s, Invulnerable: 1b, PersistenceRequired: 1b, FromBucket: 1b, Health: 14.0f, Variant: 0}

# Agronet event
function do2:external/agronet/logs/entity_testing/axolotls