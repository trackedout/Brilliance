# happens every datapack tick
execute as @a[tag=!do2.fakePlayer] unless entity @s[scores={do2.trigger.logs=0}] run function do2:scoreboard/triggers/t_logs
execute as @a[tag=!do2.fakePlayer] unless entity @s[scores={do2.trigger.version=0}] run function do2:scoreboard/triggers/t_version
execute as @a[tag=!do2.fakePlayer] unless entity @s[scores={do2.trigger.map=0}] run function do2:scoreboard/triggers/t_map
execute as @a[tag=!do2.fakePlayer] unless entity @s[scores={do2.trigger.playsound=0}] run function do2:scoreboard/triggers/t_playsound
execute as @a[tag=!do2.fakePlayer] unless entity @s[scores={do2.trigger.gui=0}] run function do2:scoreboard/triggers/t_gui
execute as @a[tag=!do2.fakePlayer] unless entity @s[scores={do2.trigger.settings=0}] run function do2:scoreboard/triggers/t_settings
