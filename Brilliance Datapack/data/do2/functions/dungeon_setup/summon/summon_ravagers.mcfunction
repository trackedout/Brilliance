# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Summoning Ravagers."}]
# - End Log -

execute if score $dungeon do2.config.useRavagerZones matches 0 run function do2:dungeon_setup/teleport_killers/no_zones/summon_ravagers
execute if score $dungeon do2.config.useRavagerZones matches 1 run function do2:dungeon_setup/teleport_killers/with_zones/summon_ravagers

# Death Gauntlet Ravager
summon minecraft:ravager -632 -48 1990 {PersistenceRequired:1b, Tags: ["L0DEATHROOM"], Invulnerable: 1b,  Health: 100f, CustomName: '{"text":"nothing, they survived Decked Out"}', Fire: -1s}
# Training Room Ravager
summon minecraft:ravager -483 132 2006 {PersistenceRequired:1b, Tags: ["L0TRAIN"], Invulnerable: 1b,  Health: 100f, CustomName: '{"text":"Jellie"}', Fire: -1s}
