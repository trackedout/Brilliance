function do2:scoreboard/setup/all
execute as @a at @s run function do2:player_setup
execute as @a at @s run function do2:events/on_player_rejoin
