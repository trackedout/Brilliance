scoreboard players set @s do2.utility.logLevel 3
tellraw @s ["",{"text":"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-","color":"gold"},{"text":"\nYou've signed up for recieving "},{"text":"Level 3","color":"dark_red"},{"text":" log events.\nIf you'd like to change your log level click one of these:\n"},{"text":"[DISABLE]","italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/set_log_level/level_0"}},{"text":" "},{"text":"[ 1 ]","italic":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/set_log_level/level_1"}},{"text":" "},{"text":"[ 2 ]","italic":true,"underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/set_log_level/level_2"}},{"text":" "},{"text":"[ 3 ]","italic":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/set_log_level/level_3"}},{"text":" "},{"text":"[ ? ]","italic":true,"underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/set_log_level/documentation"}},{"text":" "},{"text":"[ \ud83c\udf10 ]","italic":true,"underlined":true,"color":"dark_blue","clickEvent":{"action":"open_url","value":"https://github.com/trackedout/Brilliance/blob/main/docs/logging.md"}},{"text":"\n"},{"text":"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-","color":"gold"}]
