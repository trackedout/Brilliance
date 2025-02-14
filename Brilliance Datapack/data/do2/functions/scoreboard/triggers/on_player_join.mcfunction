execute if entity @s[tag=do2.fakePlayer] run return 0

scoreboard players set @s do2.trigger.about 0
scoreboard players set @s do2.trigger.coop 0
scoreboard players set @s do2.trigger.settings 0
scoreboard players set @s do2.trigger.vanilla 0


scoreboard players enable @s do2.trigger.about
scoreboard players enable @s do2.trigger.coop
scoreboard players enable @s do2.trigger.settings
scoreboard players enable @s do2.trigger.vanilla
