kill @e[tag=do2.statistics_room]

execute unless score $dungeon do2.active matches 0.. run scoreboard players set $dungeon do2.active 0

summon minecraft:text_display -492 125 1990 {text:'[{"text":"§l§eTreasure §fStatistics!§r\\n\\n§fCrowns Picked Up: §o§c"},{"score":{"name":"$dungeon","objective":"do2.run.active"},"color":"red","italic":"true"},{"text":"\\n§fCrowns Escaped With: §o§c"},{"score":{"name":"$dungeon","objective":"do2.run.active"},"color":"red","italic":"true"},{"text":"\\n§fCoins Picked Up: §o§c"},{"score":{"name":"$dungeon","objective":"do2.run.active"},"color":"red","italic":"true"},{"text":"\\n§fCoins Converted: §o§c"},{"score":{"name":"$dungeon","objective":"do2.run.active"},"color":"red","italic":"true"},{"text":"\\n§fCrowns Spent: §o§b"},{"score":{"name":"$dungeon","objective":"do2.run.active"},"color":"red","italic":"true"}]', Rotation:[90f,0f], billboard:"fixed",background:26,Tags:["do2.statistics_room","do2.stats.treasures"]}
