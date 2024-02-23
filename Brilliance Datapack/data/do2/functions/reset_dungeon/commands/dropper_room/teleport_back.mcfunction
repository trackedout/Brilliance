# Attempt to teleport player back
scoreboard players operation .x do2.utility.old_position.temp = @s do2.utility.old_position.x
scoreboard players operation .y do2.utility.old_position.temp = @s do2.utility.old_position.y
scoreboard players operation .z do2.utility.old_position.temp = @s do2.utility.old_position.z

tag @s add do2.awaiting_teleport

execute summon marker run function do2:reset_dungeon/commands/dropper_room/as_marker

tag @s remove do2.awaiting_teleport
