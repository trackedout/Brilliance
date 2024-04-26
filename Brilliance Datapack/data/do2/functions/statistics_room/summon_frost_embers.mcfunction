kill @e[tag=do2.statistics_room,tag=!do2.stats.embers]

execute unless score $dungeon do2.active matches 0.. run scoreboard players set $dungeon do2.active 0

execute unless entity @e[tag=do2.statistics_room,tag=do2.stats.embers] run summon minecraft:text_display -492 125 1990 {Rotation:[90f,0f], billboard:"fixed",background:26,Tags:["do2.statistics_room","do2.stats.embers"]}
execute as @e[tag=do2.statistics_room,tag=do2.stats.embers] if entity @s run data merge entity @s {text:'[{"text":"§l§bFrost Embers §fStatistics!§r\\n\\nFrost Embers Picked Up: "},{"score":{"name":"$dungeon","objective":"do2.run.active"},"color":"red","italic":"true"},{"text":"\\n§fFrost Embers Escaped With: §o§c"},{"score":{"name":"$dungeon","objective":"do2.run.active"},"color":"red","italic":"true"},{"text":"\\n§fFrost Embers Spent: §o§b"},{"score":{"name":"$dungeon","objective":"do2.run.active"},"color":"red","italic":"true"}]'}
