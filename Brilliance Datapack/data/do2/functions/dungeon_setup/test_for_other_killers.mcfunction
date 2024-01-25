# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Testing for 'other' killers ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rIncludes:\n - §oOne Eyed Willy§r\n - §oDavy Bones§r\n - §oEndermites§r\n - §oEvokers§r"}]}},{"text":")"}]
# - End Log -

# Need to check if ONE killer is not existing. Best way I could do this:
scoreboard objectives add do2.tests.all_killers_alive dummy
scoreboard players set $dungeon do2.tests.all_killers_alive 1

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
# Check for One Eyed Willy
execute unless entity @e[type=minecraft:drowned,tag=L2WILLY] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
# Check for Trainign Room Drowned
execute unless entity @e[type=minecraft:drowned,tag=L0TRAIN] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
# Check for Davy Bones
execute unless entity @e[type=minecraft:stray,tag=L2DAVY] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
# Check for Evokers
execute unless entity @e[type=minecraft:evoker,tag=L1E1] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E2] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E3] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E4] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E5] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E6] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E7] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E8] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E9] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E10] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E11] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L1E12] run scoreboard players set $dungeon do2.tests.all_killers_alive 0

execute unless entity @e[type=minecraft:evoker,tag=L2E1] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E2] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E3] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E4] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E5] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E6] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E7] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E8] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E9] run scoreboard players set $dungeon do2.tests.all_killers_alive 0
execute unless entity @e[type=minecraft:evoker,tag=L2E10] run scoreboard players set $dungeon do2.tests.all_killers_alive 0

execute unless score $dungeon do2.tests.all_killers_alive matches 1 run function do2:dungeon_setup/summon/other_killers
scoreboard objectives remove do2.tests.all_killers_alive
