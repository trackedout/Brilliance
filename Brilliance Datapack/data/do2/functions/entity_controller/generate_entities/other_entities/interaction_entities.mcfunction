# - Start Log -
execute as @a[scores={do2.logs.entity_testing=1..}] run tellraw @s ["",{"text":"[§9B§r]: Resummoning all §3Interaction Entities§r."}]
# - End Log -

# It's kinda useless to check for interaction entities before summoning them
# so it's better that we kill them all and re-summon them.
# However, just to be safe, we'll kill ONLY the interaction entities we summon.
kill @e[type=minecraft:interaction,tag=lamp_blocker]
kill @e[type=minecraft:interaction,tag=as_blocker]
kill @e[type=minecraft:interaction,tag=hopper_blocker]
kill @e[type=minecraft:interaction,tag=water_blocker]
kill @e[type=minecraft:interaction,tag=lava_blocker]
kill @e[type=minecraft:interaction,tag=parrot_blocker]
kill @e[type=minecraft:interaction,tag=dropper_blocker]
kill @e[type=minecraft:interaction,tag=ceiling_blocker]
kill @e[type=minecraft:interaction,tag=trapdoor_blocker]
# Todo: remove this function after we save builder's with 0 legacy entities
function do2:entity_controller/generate_entities/other_entities/kill_legacy_interaction_entities

# Prevent blocks placed on difficulty lamps
summon minecraft:interaction -559 113.95 1987.50 {width: 5.1f, height: 1.1f, Tags:["lamp_blocker"]}

# Prevent animation armor stands from being edited
summon minecraft:interaction -545 113 1980 {width: 1.0f, height: 2.0f, Tags:["as_blocker"]}
summon minecraft:interaction -544 113 1980 {width: 1.0f, height: 2.0f, Tags:["as_blocker"]}

# Prevent items from being inserted or removed from the deck shulker breaker hopper
summon minecraft:interaction -564.50 113.01 1980.50 {width: 1.0f, height: 1.0f, Tags:["hopper_blocker"]}

# Prevent players from interacting with the dispensers or trapdoors of the entry door model
summon minecraft:interaction -624.50 48.00 1956.50 {width: 3.02f, height: 2.0f, Tags:["water_blocker"]}
summon minecraft:interaction -617.50 48.00 1956.50 {width: 3.02f, height: 2.0f, Tags:["water_blocker"]}

# Prevent players from interacting with the dispensers of the L4 lava hazard trap
summon minecraft:interaction -652.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -649.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -646.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -643.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -640.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -637.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -634.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -631.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -628.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -625.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -622.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -619.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -616.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -613.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -610.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -607.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -604.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -601.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -598.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -597.50 -49.01 1881.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1848.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1851.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1854.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1857.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1860.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1863.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1866.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1869.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1872.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1875.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1878.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -50.0 1909.50 {width: 3.02f, height: 1.01f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1906.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1903.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1900.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1897.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1894.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1891.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1888.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1885.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}
summon minecraft:interaction -593.50 -49.01 1884.50 {width: 3.0f, height: 0.02f, Tags:["lava_blocker"]}

# Prevent players from interacting with the trapdoor below the parrot in the L2 pirate ship
summon minecraft:interaction -576.50 17.81 2010.50 {width: 1.002f, height: 0.188f, Tags:["parrot_blocker"]}

# Prevent players from interacting with the dropper for lodestone location #46
summon minecraft:interaction -573.50 16.00 2014.50 {width: 1.0f, height: 1.0f, Tags:["dropper_blocker"]}

# Prevent players from interacting with the trapdoors in the ceiling of the bottom floor L3 storage room
summon minecraft:interaction -642.00 -12.20 1889.00 {width: 2.0f, height: 0.2f, Tags:["ceiling_blocker"]}
summon minecraft:interaction -639.50 -12.20 1889.50 {width: 3.0f, height: 0.2f, Tags:["ceiling_blocker"]}

# Prevent players from interacting with the trapdoor in the foreman's office under snow layers
summon minecraft:interaction -582.5 -3.19 1922.5 {width: 1.002f, height: 0.188f, Tags:["trapdoor_blocker"]}
