kill @e[tag=do2.statistics_room,tag=!do2.stats.general]

execute unless score @p do2.runs matches 0.. run scoreboard players set @p do2.runs 0
execute unless score @p do2.wins matches 0.. run scoreboard players set @p do2.wins 0
execute unless score @p do2.losses matches 0.. run scoreboard players set @p do2.losses 0
execute unless score @p do2.eggs.total matches 0.. run scoreboard players set @p do2.eggs.total 0
execute unless score @p do2.highest_win_streak matches 0.. run scoreboard players set @p do2.highest_win_streak 0
execute unless score @p do2.win_streak matches 0.. run scoreboard players set @p do2.win_streak 0


execute unless entity @e[tag=do2.statistics_room,tag=do2.stats.general] run summon minecraft:text_display -492 125 1990 {alignment:"center",Rotation:[90f,0f], billboard:"fixed",background:26,Tags:["do2.statistics_room","do2.stats.general"]}
execute as @e[tag=do2.statistics_room,tag=do2.stats.general] if entity @s run data merge entity @s {text:'[{"text":"§lStatistics!§r\\n\\n§fTotal Runs: §o§b"},{"score":{"name":"@p","objective":"do2.runs"},"color":"aqua","italic":true},{"text":"\\n§fTotal Wins: §o§b"},{"score":{"name":"@p","objective":"do2.wins"},"color":"aqua","italic":true},{"text":"\\n§fTotal Losses: §o§b"},{"score":{"name":"@p","objective":"do2.losses"},"color":"aqua","italic":true},{"text":"\\n§fHighest Win Streak: §o§b"},{"score":{"name":"@p","objective":"do2.highest_win_streak"},"color":"aqua","italic":true},{"text":"\\n§fCurrent Win Streak: §o§b"},{"score":{"name":"@p","objective":"do2.win_streak"},"color":"aqua","italic":true},{"text":"\\n§fEggs Found: §o§b"},{"score":{"name":"@p","objective":"do2.eggs.total"},"color":"aqua","italic":true},{"text":"§f/§o§b20"}]'}
