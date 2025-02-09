execute if entity @s[tag=!do2.fakePlayer] run return 0

scoreboard players set @s do2.trigger.logs 0
scoreboard players set @s do2.trigger.version 0
scoreboard players set @s do2.trigger.map 0
scoreboard players set @s do2.trigger.playsound 0
scoreboard players set @s do2.trigger.gui 0

scoreboard players enable @s[tag=do2.staff] do2.trigger.logs
scoreboard players enable @s do2.trigger.version
scoreboard players enable @s do2.trigger.map
scoreboard players enable @s do2.trigger.playsound
scoreboard players enable @s do2.trigger.gui
