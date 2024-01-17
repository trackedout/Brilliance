# - Start Log -
execute as @a[scores={do2.utility.logLevel=1..}] run tellraw @s "§r[§9B§r]: Datapack loaded."
# - End Log -
function do2:scoreboard/setup/all
scoreboard player set $dungeon do2.utility.dungeonRepair 1
execute as @a at @s run function do2:events/on_player_rejoin

