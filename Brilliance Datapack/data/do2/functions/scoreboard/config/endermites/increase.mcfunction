execute if score $dungeon do2.config.endermiteCount matches ..0 run scoreboard players set $dungeon do2.config.endermiteCount 0
scoreboard players add $dungeon do2.config.endermiteCount 1
execute if score $dungeon do2.config.endermiteCount matches 6.. run scoreboard players set $dungeon do2.config.endermiteCount 6
execute positioned -529 115 1952 run playsound minecraft:entity.endermite.hurt voice @a[distance=..20] ~ ~ ~ 0.8 1

function do2:scoreboard/config/endermites/sign
