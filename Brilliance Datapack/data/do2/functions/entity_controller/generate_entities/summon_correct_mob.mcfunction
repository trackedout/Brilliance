# - Start Log -
execute as @a[scores={do2.logs.entity_controller=1..}] run tellraw @s ["",{"text":"[§9B§r]: Summoning a new [§aEC§r] mob."}]
# - End Log -

# Invalid Score
execute if score $dungeon do2.utility.ec.mobGenerationType matches 0 run return 0
# Ravagers
execute if score $dungeon do2.utility.ec.mobGenerationType matches 1 run summon minecraft:ravager -500 70 2000 {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["newly_generated_mob","mob_being_worked_on"],  Health: 100f, CustomName: '{"text":"NAME-NOT-INCLUDED"}', Fire: -1s}
# Wardens
execute if score $dungeon do2.utility.ec.mobGenerationType matches 2 run summon minecraft:warden -500 70 2000 {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["newly_generated_mob","mob_being_worked_on"],  Health: 500f, CustomName: '{"text":"NAME-NOT-INCLUDED"}', Fire: -1s, Brain : { memories : { "minecraft:dig_cooldown" : { value : {}, ttl : 1000000L } } }}
# Drowned
execute if score $dungeon do2.utility.ec.mobGenerationType matches 3 run summon minecraft:drowned -500 70 2000 {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["newly_generated_mob","mob_being_worked_on"],  Health: 20f, CustomName: '{"text":"NAME-NOT-INCLUDED"}', Fire: -1s, HandDropChances: [0.0f, 0.0f], Health: 20.0f, HandItems: [{id: "minecraft:trident", Count: 1b}, {}]}
# Endermite
execute if score $dungeon do2.utility.ec.mobGenerationType matches 4 run summon minecraft:endermite -500 70 2000 {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["newly_generated_mob","mob_being_worked_on"], Health: 8.0f, CustomName: '{"text":"NAME-NOT-INCLUDED"}'}
# Stray
# TODO: Davy drops stuff when /killed need to stop him from having drops like evokers.
execute if score $dungeon do2.utility.ec.mobGenerationType matches 5 run summon minecraft:minecart -500 70 2000 {Tags:["L2DAVY_minecart","newly_generated_minecart"], Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Invulnerable:1b, Tags: ["newly_generated_mob","mob_being_worked_on"], id: "minecraft:stray", Health: 20.0f, Silent: 1b, CustomName: '{"text":"NAME-NOT-INCLUDED"}',HandItems:[{id: "minecraft:bow", Count: 1b, tag:{Damage: 0, Enchantments:[{lvl: 1s, id: "minecraft:unbreaking"},{lvl: 1s, id: "minecraft:power"}]}},{}]}]}

# Agronet event
function do2:external/agronet/logs/entity_controller/summon_correct_mob