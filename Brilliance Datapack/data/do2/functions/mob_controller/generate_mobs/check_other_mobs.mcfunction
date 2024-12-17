scoreboard objectives add do2.tests.amountOfMobsExists


# Death Room Ravager
scoreboard players set $dungeon do2.tests.amountOfMobsExists 0
execute as @e[type=ravager,tag=L0DEATHROOM] run scoreboard players add $dungeon do2.tests.amountOfMobsExists 1
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run kill @e[type=ravager,tag=L0DEATHROOM]
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run summon minecraft:ravager -632 -48 1990 {PersistenceRequired:1b, Tags: ["L0DEATHROOM"], Invulnerable: 1b,  Health: 100f, CustomName: '{"text":"nothing, they survived Decked Out"}', Fire: -1s}

# Todo: do checks for other killers. Such as skeleton, evokers, axolotals, etc

scoreboard objectives remove do2.tests.amountOfMobsExists
