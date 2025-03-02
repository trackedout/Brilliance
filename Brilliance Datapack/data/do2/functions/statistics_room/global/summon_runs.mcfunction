kill @e[tag=do2.statistics_room,tag=!do2.stats.runs]

execute unless score $dungeon do2.systems.embers.released matches 0.. run scoreboard players set $dungeon do2.systems.embers.released 0
execute unless score $dungeon do2.systems.treasure.released matches 0.. run scoreboard players set $dungeon do2.systems.treasure.released 0
execute unless score $dungeon do2.systems.hazard.generated matches 0.. run scoreboard players set $dungeon do2.systems.hazard.generated 0
execute unless score $dungeon do2.systems.clank.generated matches 0.. run scoreboard players set $dungeon do2.systems.clank.generated 0
execute unless score $dungeon do2.systems.hazard.blocked matches 0.. run scoreboard players set $dungeon do2.systems.hazard.blocked 0
execute unless score $dungeon do2.systems.clank.blocked matches 0.. run scoreboard players set $dungeon do2.systems.clank.blocked 0


execute unless entity @e[tag=do2.statistics_room,tag=do2.stats.runs] run summon minecraft:text_display -492 125 1990 {alignment:"center",Rotation:[90f,0f], billboard:"fixed",background:26,Tags:["do2.statistics_room","do2.stats.runs"]}
execute as @e[tag=do2.statistics_room,tag=do2.stats.runs] if entity @s run data merge entity @s {text:'[{"text":"§2Run §fStatistics!§r\\n\\n"},{"text":"Total Generated:\\n"},{"score": {"name": "$dungeon","objective": "do2.systems.embers.released"},"color": "aqua"},{"text": "\\uE0A3 | "},{"score": {"name": "$dungeon","objective": "do2.systems.treasure.released"},"color": "aqua"},{"text": "\\uE0CA | "},{"score": {"name": "$dungeon","objective": "do2.systems.hazard.generated"},"color": "aqua"},{"text": "\\uE0CB | "},{"score": {"name": "$dungeon","objective": "do2.systems.clank.generated"},"color": "aqua"},{"text": "\\uE0C3"},{"text": "\\n§lTotal Blocked:\\n"},{"score": {"name": "$dungeon","objective": "do2.systems.hazard.blocked"},"color": "aqua"},{"text": "\\uE0CB | "},{"score": {"name": "$dungeon","objective": "do2.systems.clank.blocked"},"color": "aqua"},{"text": "\\uE0C3"},{"text":"\\n\\nCards Played:\\n WIP"}]'}
