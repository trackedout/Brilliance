# Invalid Score
execute if score $dungeon do2.utility.mc.mobGenerationType matches 0 run return 0
# Ravagers
execute if score $dungeon do2.utility.mc.mobGenerationType matches 1 run summon minecraft:ravager -500 70 2000 {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["newly_generated_mob","mob_being_worked_on"],  Health: 100f, CustomName: '{"text":"NAME-NOT-INCLUDED"}', Fire: -1s}
# Wardens
execute if score $dungeon do2.utility.mc.mobGenerationType matches 2 run summon minecraft:warden -500 70 2000 {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["newly_generated_mob","mob_being_worked_on"],  Health: 500f, CustomName: '{"text":"NAME-NOT-INCLUDED"}', Fire: -1s, Brain : { memories : { "minecraft:dig_cooldown" : { value : {}, ttl : 1000000L } } }}
# Drowned
execute if score $dungeon do2.utility.mc.mobGenerationType matches 3 run summon minecraft:drowned -500 70 2000 {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["newly_generated_mob","mob_being_worked_on"],  Health: 20f, CustomName: '{"text":"NAME-NOT-INCLUDED"}', Fire: -1s, HandDropChances: [0.0f, 0.0f], Health: 20.0f, HandItems: [{id: "minecraft:trident", Count: 1b}, {}]}

