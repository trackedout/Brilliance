# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Testing for OTHER mobs ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rIncludes:\n - §oAxolotls§r\n - §oSheep that never touched ground§r\n - §oAdventure PIG!§r\n - §oStart plate zombie§r\n - §oRedstone iron golem§r\n - §oDifficulty lamp blocker§r\n - §oLobby door armor stand blockers§r\n - §oDeck shulker breaker hopper blocker§r\n - §oHidden Witch§r"}]}},{"text":")"}]
# - End Log -

# Axolotls
execute unless entity @e[type=minecraft:axolotl,tag=AXO_1] run summon minecraft:axolotl -507 11 1993 {Tags: ["AXO_1","do2.manually_spawned"], CustomName: '{"text":"Lawrence Fletcher"}', Fire: -1s, Invulnerable: 1b, PersistenceRequired: 1b, FromBucket: 1b, Health: 14.0f, Variant: 2}
execute unless entity @e[type=minecraft:axolotl,tag=AXO_2] run summon minecraft:axolotl -512 11 1992 {Tags: ["AXO_2","do2.manually_spawned"], CustomName: '{"text":"Linda Flynn-Fletcher"}', Fire: -1s, Invulnerable: 1b, PersistenceRequired: 1b, FromBucket: 1b, Health: 14.0f, Variant: 0}
execute unless entity @e[type=minecraft:axolotl,tag=AXO_3] run summon minecraft:axolotl -509 11 1992 {Tags: ["AXO_3","do2.manually_spawned"], CustomName: '{"text":"Perry"}', Fire: -1s, Invulnerable: 1b, PersistenceRequired: 1b, FromBucket: 1b, Health: 14.0f, Variant: 1}
execute unless entity @e[type=minecraft:axolotl,tag=AXO_4] run summon minecraft:axolotl -510 12 1990 {Tags: ["AXO_4","do2.manually_spawned"], CustomName: '{"text":"Candace"}', Fire: -1s, Invulnerable: 1b, PersistenceRequired: 1b, FromBucket: 1b, Health: 14.0f, Variant: 0}

# Sheep that never touched ground
execute unless entity @e[type=minecraft:sheep,tag=NO_TOUCH] run summon minecraft:sheep -600 137 1938 {Tags: ["NO_TOUCH"], Invulnerable: 1b, FallDistance: 1.0f, PersistenceRequired: 1b,  Age: 0, Leash: {X: -600, Y: 145, Z: 1938}, Health: 8.0f, Color: 6b, Air: 300s, OnGround: 0b, Fire: -1s}

# Adventure PIG!
execute unless entity @e[type=minecraft:pig,tag=NO_TOUCH] run summon minecraft:pig -524 110 2010 {Tags: ["NO_TOUCH"], Invulnerable: 1b, FallDistance: 1.0f, PersistenceRequired: 1b,  Age: 0, Health: 8.0f, Color: 6b, Air: 300s, OnGround: 0b, Fire: -1s, CustomName: '{"text":"Adventure PIG!"}'}

# Witch named One-Eyed-Willy
execute unless entity @e[type=minecraft:witch,tag=OneEyed] run summon minecraft:witch -571 14 1962 {Tags: ["OneEyed","do2.manually_spawned"], CustomName: '{"text":"One-Eyed Willy"}', Invulnerable: 1b, FallDistance: 1.0f, PersistenceRequired: 1b,  Age: 0, Health: 26.0f, Fire: -1s}

# Start plate zombie
execute unless entity @e[type=minecraft:zombie,tag=Start] run summon minecraft:zombie -622.5 45 1938.5 {Tags: ["Start","do2.manually_spawned"], Invulnerable: 1b, FallDistance: 1.0f, PersistenceRequired: 1b,  Age: 0, Health: 20.0f, Fire: -1s}

# Redstone iron golem
execute unless entity @e[type=minecraft:iron_golem,tag=Redstone] run summon minecraft:iron_golem -505.3 36 1944.5 {Tags: ["Redstone","do2.manually_spawned"], Invulnerable: 1b, FallDistance: 1.0f, PersistenceRequired: 1b,  Age: 0, Health: 100.0f, PlayerCreated: 0b, Fire: -1s}

# Prevent blocks placed on difficulty lamps.
summon minecraft:interaction -559 113.95 1987.50 {width: 5.1, height: 1.1, Tags:["lamp_blocker"]}

# Prevent animation armor stands from being edited.
summon minecraft:interaction -545 113 1980 {width: 1, height: 2, Tags:["as_blocker"]}
summon minecraft:interaction -544 113 1980 {width: 1, height: 2, Tags:["as_blocker"]}

# Prevent items from being inserted or removed from the deck shulker breaker hopper.
summon minecraft:interaction -564.50 113.01 1980.50 {width: 1.0, height: 1.0, Tags:["hopper_blocker"]} 

# Prevent players from interacting with the dispensers or trapdoors of the entry door model.
summon minecraft:interaction -624.50 48.00 1956.50 {width: 3.02f, height: 2.0f, Tags:["water_blocker"]}
summon minecraft:interaction -617.50 48.00 1956.50 {width: 3.02f, height: 2.0f, Tags:["water_blocker"]}

# Prevent players from interacting with the dispensers of the L4 lava hazard trap.
summon minecraft:interaction -652.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -649.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -646.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -643.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -640.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -637.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -634.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -631.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -628.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -625.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -622.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -619.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -616.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -613.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -610.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -607.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -604.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -601.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -598.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -597.50 -48.99 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}

summon minecraft:interaction -593.50 -48.99 1848.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1851.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1854.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1857.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1860.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1863.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1866.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1869.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1872.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1875.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1878.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}

summon minecraft:interaction -593.50 -48.99 1909.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1906.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1903.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1900.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1897.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1894.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1891.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1888.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1885.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -48.99 1884.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}

# TangoCam (just in case)
execute unless entity @e[type=minecraft:player,name=tangocam] unless entity @e[type=minecraft:player,name=TangoCam] run function do2:dungeon_setup/summon/summon_tangocam
