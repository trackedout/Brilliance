# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=4..}] run tellraw @s ["",{"text":"§f[§9B§r]: Testing for 'other' killers ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rIncludes:\n - §oOne Eyed Willie§r\n - §oDavey Bones§r\n - §oEndermites§r\n - §oEvokers§r"}]}},{"text":")"}]
# - End Log -


# Kill extra mites.
execute if score $dungeon do2.config.endermiteCount matches ..5 run kill @e[type=minecraft:endermite,tag=L2MITE6]
execute if score $dungeon do2.config.endermiteCount matches ..4 run kill @e[type=minecraft:endermite,tag=L2MITE5]
execute if score $dungeon do2.config.endermiteCount matches ..3 run kill @e[type=minecraft:endermite,tag=L2MITE4]
execute if score $dungeon do2.config.endermiteCount matches ..2 run kill @e[type=minecraft:endermite,tag=L2MITE3]
execute if score $dungeon do2.config.endermiteCount matches ..1 run kill @e[type=minecraft:endermite,tag=L2MITE2]
execute if score $dungeon do2.config.endermiteCount matches ..0 run kill @e[type=minecraft:endermite,tag=L2MITE1]
# Check for mites.
execute if score $dungeon do2.config.endermiteCount matches 1.. unless entity @e[type=minecraft:endermite,tag=L2MITE1] run summon minecraft:endermite -546 6 2016 {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L2MITE1"], Health: 8.0f, CustomName: '{"text":"Tacticle Tickle"}'}
execute if score $dungeon do2.config.endermiteCount matches 2.. unless entity @e[type=minecraft:endermite,tag=L2MITE2] run summon minecraft:endermite -546 6 2016 {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L2MITE2"], Health: 8.0f, CustomName: '{"text":"Frostmite"}'}
execute if score $dungeon do2.config.endermiteCount matches 3.. unless entity @e[type=minecraft:endermite,tag=L2MITE3] run summon minecraft:endermite -546 6 2016 {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L2MITE3"], Health: 8.0f, CustomName: '{"text":"Bit Nibbler"}'}
execute if score $dungeon do2.config.endermiteCount matches 4.. unless entity @e[type=minecraft:endermite,tag=L2MITE4] run summon minecraft:endermite -546 6 2016 {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L2MITE4"], Health: 8.0f, CustomName: '{"text":"Lil\' Endy"}'}
execute if score $dungeon do2.config.endermiteCount matches 5.. unless entity @e[type=minecraft:endermite,tag=L2MITE5] run summon minecraft:endermite -546 6 2016 {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L2MITE5"], Health: 8.0f, CustomName: '{"text":"Parkour Failure"}'}
execute if score $dungeon do2.config.endermiteCount matches 6.. unless entity @e[type=minecraft:endermite,tag=L2MITE6] run summon minecraft:endermite -546 6 2016 {PersistenceRequired:1b, Invulnerable: 1b, Tags: ["L2MITE6"], Health: 8.0f, CustomName: '{"text":"Nice Jump LOL"}'}


# Need to check if ONE killer is not existing. Best way I could do this:
scoreboard objectives add do2.tests.all_killers_alive dummy
scoreboard players set $dungeon do2.tests.all_killers_alive 0

# Check for One Eyed Willie
execute unless entity @e[type=minecraft:drowned,tag=L2WILLIE] run scoreboard players set $dungeon do2.tests.all_killers_alive 1
# Check for Training Room Drowned
execute unless entity @e[type=minecraft:drowned,tag=L0Z2] run scoreboard players set $dungeon do2.tests.all_killers_alive 2
# Check for Davey Bones
execute unless entity @e[type=minecraft:stray,tag=L2DAVY] run scoreboard players set $dungeon do2.tests.all_killers_alive 3
# Check for Evokers
function do2:entity_controller/generate_entities/evokers/test_for_all_evokers

# New
execute unless entity @e[type=minecraft:evoker,tag=L1E13] run scoreboard players set $dungeon do2.tests.all_killers_alive 26
execute unless entity @e[type=minecraft:evoker,tag=L1E14] run scoreboard players set $dungeon do2.tests.all_killers_alive 27
execute unless entity @e[type=minecraft:evoker,tag=L1E15] run scoreboard players set $dungeon do2.tests.all_killers_alive 28
execute unless entity @e[type=minecraft:evoker,tag=L1E16] run scoreboard players set $dungeon do2.tests.all_killers_alive 29
execute unless entity @e[type=minecraft:evoker,tag=L1E17] run scoreboard players set $dungeon do2.tests.all_killers_alive 30
execute unless entity @e[type=minecraft:evoker,tag=L1E18] run scoreboard players set $dungeon do2.tests.all_killers_alive 31

execute unless entity @e[type=minecraft:evoker,tag=L2E11] run scoreboard players set $dungeon do2.tests.all_killers_alive 32
execute unless entity @e[type=minecraft:evoker,tag=L2E12] run scoreboard players set $dungeon do2.tests.all_killers_alive 33
execute unless entity @e[type=minecraft:evoker,tag=L2E13] run scoreboard players set $dungeon do2.tests.all_killers_alive 34
execute unless entity @e[type=minecraft:evoker,tag=L2E14] run scoreboard players set $dungeon do2.tests.all_killers_alive 35
execute unless entity @e[type=minecraft:evoker,tag=L2E15] run scoreboard players set $dungeon do2.tests.all_killers_alive 36
execute unless entity @e[type=minecraft:evoker,tag=L2E16] run scoreboard players set $dungeon do2.tests.all_killers_alive 37
execute unless entity @e[type=minecraft:evoker,tag=L2E17] run scoreboard players set $dungeon do2.tests.all_killers_alive 38


execute unless score $dungeon do2.tests.all_killers_alive matches 0 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: Missing 'Other' Killer §b#"},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.tests.all_killers_alive"}}]
execute unless score $dungeon do2.tests.all_killers_alive matches 0 run function do2:dungeon_setup/summon/other_killers
scoreboard objectives remove do2.tests.all_killers_alive

# Agronet event
function do2:external/agronet/logs/dungeon_setup/test_for_other_killers