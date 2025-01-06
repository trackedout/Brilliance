execute store result score $dungeon do2.utility.ec.collectingLogs run data get storage do2:mobs mobCountErrors
execute if score $dungeon do2.utility.ec.collectingLogs matches ..0 run return 0
execute if score $dungeon do2.utility.ec.collectingLogs matches 1 as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"storage": "do2:mobs","nbt": "mobCountErrors[0]"},{"text":"'s mob count is empty. No mobs will generate in this zone."}]
execute if score $dungeon do2.utility.ec.collectingLogs matches 1 run return 0

# there is no fricken way to DISPLAY do2:mobs mergedErrors in a "READABLE" format.
# Sure I can have it display it in JSON form, but no user wants to see that.
# Screw us being stuck in 1.20.1, the very NEXT version 1.20.2 SOLVED this issue.
# I've spent THREE days trying to come up with a solution that can display all 1,048,574 possible combinations.
# In the end I gave up -.-
#  - Sincerely a VERY frustrated programmer.
execute as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"[§9B§r]: Multiple zones' mob count is empty. No mobs will generate in "},{"score":{"name":"$dungeon","objective":"do2.utility.ec.collectingLogs"},"color":"aqua"},{"text":"§r zones. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"storage": "do2:mobs","nbt": "mobCountErrors"}]}},{"text":")"}]

