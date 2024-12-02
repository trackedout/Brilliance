scoreboard players set $testing_number do2.config.mc.levelZoneMobCount 0
execute as @e[type=ravager,tag=L1Z1] run scoreboard players add $testing_number do2.config.mc.levelZoneMobCount 1
execute if score $l1z1 do2.config.mc.levelZoneMobCount = $testing_number do2.config.mc.levelZoneMobCount run return 0
# Any code after this is ran when ravager count ISN'T matching

tag @e[type=ravager,tag=L1Z1] add mob_editing

execute if score $l1z1 do2.config.mc.levelZoneMobCount < $testing_number do2.config.mc.levelZoneMobCount run
