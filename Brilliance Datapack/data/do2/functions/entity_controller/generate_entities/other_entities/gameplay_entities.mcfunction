scoreboard objectives add do2.tests.amountOfMobsExists dummy

# Death Room Ravager
scoreboard players set $dungeon do2.tests.amountOfMobsExists 0
execute as @e[type=ravager,tag=L0DEATHROOM] run scoreboard players add $dungeon do2.tests.amountOfMobsExists 1
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run kill @e[type=ravager,tag=L0DEATHROOM]
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run summon minecraft:ravager -632 -48 1990 {PersistenceRequired:1b, Tags: ["L0DEATHROOM"], Invulnerable: 1b,  Health: 100f, CustomName: '{"text":"nothing, they survived Decked Out"}', Fire: -1s}

# TODO: remove this legacy
execute positioned -519 -3 2007 as @e[type=minecraft:iron_golem,distance=..2,tag=!L2RUSTY] run kill @s

# Rusty
scoreboard players set $dungeon do2.tests.amountOfMobsExists 0
execute as @e[type=iron_golem,tag=L2RUSTY] run scoreboard players add $dungeon do2.tests.amountOfMobsExists 1
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run kill @e[type=iron_golem,tag=L2RUSTY]
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run summon minecraft:iron_golem -520 -3 2007 {PersistenceRequired:1b, Tags: ["L2RUSTY"], Invulnerable: 1b,  Health: 100f, CustomName: '{"text":"Rusty"}', Fire: -1s, PlayerCreated:1b}



# Iron golems to aggro L1's crypt ravagers?
