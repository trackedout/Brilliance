execute unless entity @s[tag=do2.dropper_dev] run return 0

# Store player's location
data modify storage do2:player position set from entity @s Pos
execute store result score @s do2.utility.old_position.x run data get storage do2:player position[0]
execute store result score @s do2.utility.old_position.y run data get storage do2:player position[1]
execute store result score @s do2.utility.old_position.z run data get storage do2:player position[2]

# then teleport them to their target destination
tp @s ~ ~ ~
tellraw @s ["",{"text":"If you'd like to teleport "},{"text":"BACK ","italic":true},{"text":"to the dropper room click "},{"text":"[HERE]","color":"blue","clickEvent":{"action":"run_command","value":"/function do2:reset_dungeon/commands/dropper_room/teleport_back"},"hoverEvent":{"action":"show_text","contents":"Click to teleport to dropper room."}},{"text":"."}]
