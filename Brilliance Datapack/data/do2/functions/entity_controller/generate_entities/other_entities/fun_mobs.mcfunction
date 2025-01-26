# - Start Log -
execute as @a[scores={do2.logs.entity_testing=1..}] run tellraw @s ["",{"text":"[§9B§r]: Testing for fun mobs("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rIncludes:\n - §oAdventure Pig§r\n - §oSheep that never touched ground§r\n - §oWitch named One-Eyed-Willie§r\n - §oRedstone iron golem§r\n - §oStart plate zombie§r"}]}},{"text":")"}]
# - End Log -

# Sheep that never touched ground
scoreboard players set $dungeon do2.tests.amountOfMobsExists 0
execute as @e[type=sheep,tag=NO_TOUCH] run scoreboard players add $dungeon do2.tests.amountOfMobsExists 1
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run kill @e[type=sheep,tag=NO_TOUCH]
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run summon minecraft:sheep -600 137 1938 {Tags: ["NO_TOUCH","do2.manually_spawned"], Invulnerable: 1b, FallDistance: 1.0f, PersistenceRequired: 1b,  Age: 0, Leash: {X: -600, Y: 145, Z: 1938}, Health: 8.0f, Color: 6b, Air: 300s, OnGround: 0b, Fire: -1s}

# Adventure PIG!
scoreboard players set $dungeon do2.tests.amountOfMobsExists 0
execute as @e[type=minecraft:pig,tag=Adv_Pig] run scoreboard players add $dungeon do2.tests.amountOfMobsExists 1
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run kill @e[type=minecraft:pig,tag=Adv_Pig]
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run summon minecraft:pig -524 110 2010 {Tags: ["Adv_Pig","do2.manually_spawned"], Invulnerable: 1b, FallDistance: 1.0f, PersistenceRequired: 1b,  Age: 0, Health: 8.0f, Air: 300s, OnGround: 0b, Fire: -1s, CustomName: '{"text":"Adventure PIG!"}'}

# Witch named One-Eyed-Willie
scoreboard players set $dungeon do2.tests.amountOfMobsExists 0
execute as @e[type=minecraft:witch,tag=OneEyed] run scoreboard players add $dungeon do2.tests.amountOfMobsExists 1
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run kill @e[type=minecraft:witch,tag=OneEyed]
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run summon minecraft:witch -571 14 1962 {Tags: ["OneEyed","do2.manually_spawned"], CustomName: '{"text":"One-Eyed Willie"}', Invulnerable: 1b, FallDistance: 1.0f, PersistenceRequired: 1b, Health: 26.0f, Fire: -1s}

# Start plate zombie
scoreboard players set $dungeon do2.tests.amountOfMobsExists 0
execute as @e[type=minecraft:zombie,tag=Start] run scoreboard players add $dungeon do2.tests.amountOfMobsExists 1
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run kill @e[type=minecraft:zombie,tag=Start]
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run summon minecraft:zombie -622.5 45 1938.5 {Tags: ["Start","do2.manually_spawned"], Invulnerable: 1b, FallDistance: 1.0f, PersistenceRequired: 1b, Health: 20.0f, Fire: -1s}

# Redstone iron golem
scoreboard players set $dungeon do2.tests.amountOfMobsExists 0
execute as @e[type=minecraft:iron_golem,tag=Redstone] run scoreboard players add $dungeon do2.tests.amountOfMobsExists 1
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run kill @e[type=minecraft:iron_golem,tag=Redstone]
execute unless score $dungeon do2.tests.amountOfMobsExists matches 1 run summon minecraft:iron_golem -505.3 36 1944.5 {Tags: ["Redstone","do2.manually_spawned"], Invulnerable: 1b, FallDistance: 1.0f, PersistenceRequired: 1b, Health: 100.0f, PlayerCreated: 0b, Fire: -1s}

# Pirate ship parrot?
# Sleeping fox?
# Tango's Horse?
