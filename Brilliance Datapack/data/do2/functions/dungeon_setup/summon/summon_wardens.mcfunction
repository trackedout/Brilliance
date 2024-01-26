# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Summoning Wardens."}]
# - End Log -


# Level 3 Wardens
execute at @e[type=area_effect_cloud,tag=L3Z1,limit=1,sort=random] run summon warden ~ ~ ~ {Brain : { memories : { "minecraft:dig_cooldown" : { value : {}, ttl : 1000000L } } }, PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L3Z1"],  Health: 500f, CustomName: '{"text":"Pain"}'}
execute at @e[type=area_effect_cloud,tag=L3Z2,limit=1,sort=random] run summon warden ~ ~ ~ {Brain : { memories : { "minecraft:dig_cooldown" : { value : {}, ttl : 1000000L } } },PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L3Z2"],  Health: 500f, CustomName: '{"text":"Panic"}'}
execute at @e[type=area_effect_cloud,tag=L3Z3,limit=1,sort=random] run summon warden ~ ~ ~ {Brain : { memories : { "minecraft:dig_cooldown" : { value : {}, ttl : 1000000L } } },PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L3Z3"],  Health: 500f, CustomName: '{"text":"Pancakes"}'}

# Level 4 Wardens
execute at @e[type=area_effect_cloud,tag=L4Z1,limit=1,sort=random] run summon warden ~ ~ ~ {Brain : { memories : { "minecraft:dig_cooldown" : { value : {}, ttl : 1000000L } } },PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L4Z1"],  Health: 500f, CustomName: '{"text":"Pinky"}'}
execute at @e[type=area_effect_cloud,tag=L4Z2,limit=1,sort=random] run summon warden ~ ~ ~ {Brain : { memories : { "minecraft:dig_cooldown" : { value : {}, ttl : 1000000L } } },PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L4Z2"],  Health: 500f, CustomName: '{"text":"Blinky"}'}
execute at @e[type=area_effect_cloud,tag=L4Z3,limit=1,sort=random] run summon warden ~ ~ ~ {Brain : { memories : { "minecraft:dig_cooldown" : { value : {}, ttl : 1000000L } } },PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L4Z3"],  Health: 500f, CustomName: '{"text":"Inky"}'}
