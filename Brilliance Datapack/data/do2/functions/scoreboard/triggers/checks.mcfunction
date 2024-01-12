# happens every datapack tick
execute as @a unless entity @s[scores={do2.trigger.logLevel=0}] run function do2:scoreboard/triggers/t_log
execute as @a unless entity @s[scores={do2.trigger.version=0}] run function do2:scoreboard/triggers/t_version
