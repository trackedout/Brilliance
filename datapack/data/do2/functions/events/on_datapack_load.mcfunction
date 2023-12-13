function do2:scoreboard/scoreboard_setup
execute as @a at @s run function do2:player_setup
execute as @a at @s run function do2:events/on_player_rejoin
