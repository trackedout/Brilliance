scoreboard players set @s do2.trigger.silenceWardens 0
scoreboard players enable @s do2.trigger.silenceWardens

execute if score @s do2.config.silenceWardens matches 1 run scoreboard players set @s do2.config.silenceWardens 2
execute if score @s do2.config.silenceWardens matches 0 run scoreboard players set @s do2.config.silenceWardens 1
execute if score @s do2.config.silenceWardens matches 2 run scoreboard players set @s do2.config.silenceWardens 0
execute unless score @s do2.config.silenceWardens matches 0..2 run scoreboard players set @s do2.config.silenceWardens 1

execute if score @s do2.config.silenceWardens matches 0 run tellraw @a [{"text":"Stop silencing far away wardens."}]
execute if score @s do2.config.silenceWardens matches 1 run tellraw @a [{"text":"Silencing far away wardens."}]
