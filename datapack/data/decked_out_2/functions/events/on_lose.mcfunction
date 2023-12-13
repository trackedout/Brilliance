# called when player dies. (tag=won not set)

scoreboard players set @s do.streak 0
title @s title "FAIL"

execute as @s run function decked_out_2:end_run
