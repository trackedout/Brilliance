# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Summoning Ravagers."}]
# - End Log -

# Best to make sure we don't have duplicate Ravagers
kill @e[type=ravager]

# Level 1 Ravagers
execute at @e[type=area_effect_cloud,tag=L1Z1,limit=1,sort=random] run summon ravager ~ ~ ~ {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L1Z1"],  Health: 100f, CustomName: '{"text":"Stumbles"}', Fire: -1s}
execute at @e[type=area_effect_cloud,tag=L1Z2,limit=1,sort=random] run summon ravager ~ ~ ~ {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L1Z2"],  Health: 100f, CustomName: '{"text":"Laser Beams!"}', Fire: -1s}
execute at @e[type=area_effect_cloud,tag=L1Z3,limit=1,sort=random] run summon ravager ~ ~ ~ {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L1Z3"],  Health: 100f, CustomName: '{"text":"Lasagna"}', Fire: -1s}
execute at @e[type=area_effect_cloud,tag=L1Z4,limit=1,sort=random] run summon ravager ~ ~ ~ {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L1Z4"],  Health: 100f, CustomName: '{"text":"Hot Breath"}', Fire: -1s}
execute at @e[type=area_effect_cloud,tag=L1Z5,limit=1,sort=random] run summon ravager ~ ~ ~ {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L1Z5"],  Health: 100f, CustomName: '{"text":"Mr. Poopy Head"}', Fire: -1s}

# Level 2 Ravagers
execute at @e[type=area_effect_cloud,tag=L2Z1,limit=1,sort=random] run summon ravager ~ ~ ~ {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L2Z1"],  Health: 100f, CustomName: '{"text":"Skadoodles"}', Fire: -1s}
execute at @e[type=area_effect_cloud,tag=L2Z2,limit=1,sort=random] run summon ravager ~ ~ ~ {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L2Z2"],  Health: 100f, CustomName: '{"text":"Snausages"}', Fire: -1s}
execute at @e[type=area_effect_cloud,tag=L2Z3,limit=1,sort=random] run summon ravager ~ ~ ~ {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L2Z3"],  Health: 100f, CustomName: '{"text":"big butts and I cannot lie"}', Fire: -1s}
execute at @e[type=area_effect_cloud,tag=L2Z4,limit=1,sort=random] run summon ravager ~ ~ ~ {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L2Z4"],  Health: 100f, CustomName: '{"text":"Sir Fluffykins of the Dungeon"}', Fire: -1s}
execute at @e[type=area_effect_cloud,tag=L2Z5,limit=1,sort=random] run summon ravager ~ ~ ~ {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L2Z5"],  Health: 100f, CustomName: '{"text":"Nugget"}', Fire: -1s}

# Death Gauntlet Ravager
summon minecraft:ravager -632 -48 1990 {Tags: ["L0DEATHROOM"], Invulnerable: 1b,  Health: 100f, CustomName: '{"text":"nothing, they survived Decked Out"}', Fire: -1s}
