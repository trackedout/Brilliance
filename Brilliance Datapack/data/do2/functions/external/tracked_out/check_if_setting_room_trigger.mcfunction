# Code needed to delay this function.
execute unless entity @s[tag=do2.setting_room_checking2] as @a[tag=do2.setting_room_checking] run tag @s add do2.setting_room_checking2
execute unless entity @s[tag=do2.setting_room_checking2] as @a[tag=do2.setting_room_checking] run function do2:external/tracked_out/check_if_setting_room_trigger
tag @a remove do2.setting_room_checking
execute unless entity @s[tag=do2.setting_room_checking2] if entity @a[tag=do2.setting_room_checking2] run return 0
tag @a remove do2.setting_room_checking2

# do2.utility.runType
# 0 = unknown
# 1 = practice
# 2 = comp

execute unless score @p[tag=do2.received_shulker] do2.utility.runType matches 1 run return 0
execute unless score $dungeon do2.run.active matches 0 run return 0

scoreboard players enable @s do2.trigger.settings

# Lock setting's room
scoreboard players set $dungeon do2.utility.lockConfigRoom 2
function do2:scoreboard/config/config_lock_inverse
