# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Summoning Ravagers."}]
# - End Log -


#L1
execute if score $dungeon do2.config.mc.controlSummons matches 1 run function do2:mob_controller/generate_mobs/zones/l1z1
execute if score $dungeon do2.config.mc.controlSummons matches 1 run function do2:mob_controller/generate_mobs/zones/l1z2
execute if score $dungeon do2.config.mc.controlSummons matches 1 run function do2:mob_controller/generate_mobs/zones/l1z3
execute if score $dungeon do2.config.mc.controlSummons matches 1 if score $dungeon do2.config.mc.level1Zones matches 0 run function do2:mob_controller/generate_mobs/zones/l1z4
execute if score $dungeon do2.config.mc.controlSummons matches 1 if score $dungeon do2.config.mc.level1Zones matches 0 run function do2:mob_controller/generate_mobs/zones/l1z5
#L2
execute if score $dungeon do2.config.mc.controlSummons matches 1 run function do2:mob_controller/generate_mobs/zones/l2z1
execute if score $dungeon do2.config.mc.controlSummons matches 1 run function do2:mob_controller/generate_mobs/zones/l2z2
execute if score $dungeon do2.config.mc.controlSummons matches 1 run function do2:mob_controller/generate_mobs/zones/l2z3
execute if score $dungeon do2.config.mc.controlSummons matches 1 if score $dungeon do2.config.mc.level2Zones matches 0 run function do2:mob_controller/generate_mobs/zones/l2z4
execute if score $dungeon do2.config.mc.controlSummons matches 1 if score $dungeon do2.config.mc.level2Zones matches 0 run function do2:mob_controller/generate_mobs/zones/l2z5


#L1
execute if score $dungeon do2.config.mc.controlSummons matches 0 if score $dungeon do2.config.mc.level1Zones matches 0 run function do2:dungeon_setup/summon/no_zones/summon_level_1_killers
execute if score $dungeon do2.config.mc.controlSummons matches 0 if score $dungeon do2.config.mc.level1Zones matches 1 run function do2:dungeon_setup/summon/with_zones/summon_level_1_killers
#L2
execute if score $dungeon do2.config.mc.controlSummons matches 0 if score $dungeon do2.config.mc.level2Zones matches 0 run function do2:dungeon_setup/summon/no_zones/summon_level_2_killers
execute if score $dungeon do2.config.mc.controlSummons matches 0 if score $dungeon do2.config.mc.level2Zones matches 1 run function do2:dungeon_setup/summon/with_zones/summon_level_2_killers

# Death Gauntlet Ravager
summon minecraft:ravager -632 -48 1990 {PersistenceRequired:1b, Tags: ["L0DEATHROOM"], Invulnerable: 1b,  Health: 100f, CustomName: '{"text":"nothing, they survived Decked Out"}', Fire: -1s}
# Training Room Ravager
summon minecraft:ravager -483 132 2006 {PersistenceRequired:1b, Tags: ["L0Z1"], Invulnerable: 1b,  Health: 100f, CustomName: '{"text":"Jellie"}', Fire: -1s}
