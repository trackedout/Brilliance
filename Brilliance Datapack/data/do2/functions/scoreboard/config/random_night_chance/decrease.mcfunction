execute if score $dungeon do2.config.nightTimeChance matches 100.. run scoreboard players set $dungeon do2.config.nightTimeChance 100
scoreboard players remove $dungeon do2.config.nightTimeChance 5
execute if score $dungeon do2.config.nightTimeChance matches ..0 run scoreboard players set $dungeon do2.config.nightTimeChance 0
execute positioned -527 115 1952 run playsound minecraft:entity.phantom.ambient voice @a[distance=..20] ~ ~ ~ 1 1.5

function do2:scoreboard/config/random_night_chance/sign
