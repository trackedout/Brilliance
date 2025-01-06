execute store result score $dungeon do2.utility.ec.collectingLogs run data get storage do2:mobs mobNameCountErrors
execute if score $dungeon do2.utility.ec.collectingLogs matches ..0 run return 0
execute if score $dungeon do2.utility.ec.collectingLogs matches 1 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"storage": "do2:mobs","nbt": "mobNameCountErrors[0]"},{"text":"'s mob name count is empty. Mobs' names will be randomly generated in this zone."}]
execute if score $dungeon do2.utility.ec.collectingLogs matches 1 run return 0

# Check log_mob_count_errors for comment.
execute as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Multiple zones' mob names count is empty. Will add randomly generated names in "},{"score":{"name":"$dungeon","objective":"do2.utility.ec.collectingLogs"},"color":"aqua"},{"text":"§r zones. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"storage": "do2:mobs","nbt": "mobNameCountErrors"}]}},{"text":")"}]

