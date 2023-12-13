# called when player dies. (tag=won not set)

scoreboard players set @s do2.streak 0
title @s title "FAIL"

execute as @s run function do2:end_run
