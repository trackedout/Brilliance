kill @e[tag=do2.statistics_room,tag=!do2.stats.lastRun]

execute unless entity @e[tag=do2.statistics_room,tag=do2.stats.lastRun] run summon minecraft:text_display -492 124.3 1990 {Rotation:[90f,0f], billboard:"fixed",background:26,Tags:["do2.statistics_room","do2.stats.lastRun"]}

# Empty Storages
data modify storage stats_display win_result set value "§c???§r§f"
data modify storage stats_display player_count set value "§c???§r§f"
data modify storage stats_display artifact_symbol set value "§c???§r§f"
data modify storage stats_display floor_embers set value "§c???§r§f"
data modify storage stats_display difficulty set value "§c???§r§f"
# Store WIN/LOSS
execute if score $dungeon do2.run.has_won matches 1 run data modify storage stats_display win_result set value "§aWIN"
execute unless score $dungeon do2.run.has_won matches 1 run data modify storage stats_display win_result set value "§cLOSS"
# Store Player/s
execute if score $dungeon do2.run.players matches 1 run data modify storage stats_display player_count set value " player"
execute unless score $dungeon do2.run.players matches 1 run data modify storage stats_display player_count set value " players"
# Store Artifact
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 10 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 11 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 12 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 13 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 14 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 15 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 16 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 17 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 18 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 19 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 20 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 28 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 29 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 30 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 31 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 32 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 33 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 34 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 35 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 36 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 37 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 38 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 39 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 40 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 41 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 42 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 43 run data modify storage stats_display artifact_symbol set value ""
execute if score $dungeon do2.run.has_won matches 1 if score $dungeon do2.run.foundArtifact matches 44 run data modify storage stats_display artifact_symbol set value ""
execute unless score $dungeon do2.run.has_won matches 1 run data modify storage stats_display artifact_symbol set value "§cN/A§r§f"
# Store Floor Embers
scoreboard players operation $dungeon do2.utility.floorEmbers = $dungeon do2.run.items.embers
scoreboard players operation $dungeon do2.utility.floorEmbers -= $dungeon do2.run.artifactValue
# Store Difficulty
execute if score $dungeon do2.run.difficulty matches 1 run data modify storage stats_display difficulty set value "§1Easy§r§f"
execute if score $dungeon do2.run.difficulty matches 2 run data modify storage stats_display difficulty set value "§aMedium§r§f"
execute if score $dungeon do2.run.difficulty matches 3 run data modify storage stats_display difficulty set value "§6Hard§r§f"
execute if score $dungeon do2.run.difficulty matches 4 run data modify storage stats_display difficulty set value "§4Deadly§r§f"
execute if score $dungeon do2.run.difficulty matches 5 run data modify storage stats_display difficulty set value "§5Deepfrost§r§f"


execute as @e[tag=do2.statistics_room,tag=do2.stats.lastRun] if entity @s run data merge entity @s {text:'[{"text": "§l§5Last Run Stats!§r\\n\\n§fRun #§o§b"},{"score": {"name": "$dungeon","objective": "do2.runs"},"color": "aqua"},{"text": " §fResult: "},{"storage": "stats_display","nbt": "win_result"},{"text": "\\n"},{"score": {"name": "$dungeon","objective": "do2.run.players"},"color": "aqua"},{"storage": "stats_display","nbt": "player_count"},{"text": " played for "},{"score": {"name": "$dungeon","objective": "do2.run.seconds"},"color": "aqua"},{"text": " seconds."},{"text": "\\nDeck Size: "},{"score": {"name": "$dungeon","objective": "do2.run.cards.deck.total"},"color": "aqua"},{"text": "/§b40"},{"text": " | Difficulty: "},{"storage": "stats_display","nbt": "difficulty"},{"text": "\\n§lGenerated:\\n"},{"score": {"name": "$dungeon","objective": "do2.run.systems.embers.released"},"color": "aqua"},{"text": "\\uE0A3 | "},{"score": {"name": "$dungeon","objective": "do2.run.systems.treasure.released"},"color": "aqua"},{"text": "\\uE0CA | "},{"score": {"name": "$dungeon","objective": "do2.run.systems.hazard.generated"},"color": "aqua"},{"text": "\\uE0CB | "},{"score": {"name": "$dungeon","objective": "do2.run.systems.clank.generated"},"color": "aqua"},{"text": "\\uE0C3"},{"text": "\\n§lPicked Up:\\n"},{"score": {"name": "$dungeon","objective": "do2.utility.floorEmbers"},"color": "aqua"},{"text": "\\uE0A3 | "},{"score": {"name": "$dungeon","objective": "do2.run.items.crowns"},"color": "aqua"},{"text": "\\uE0A2 | "},{"score": {"name": "$dungeon","objective": "do2.run.items.coins"},"color": "aqua"},{"text": "\\uE0A1"},{"text": "\\n§lBlocked:\\n"},{"score": {"name": "$dungeon","objective": "do2.run.systems.hazard.blocked"},"color": "aqua"},{"text": "\\uE0CB | "},{"score": {"name": "$dungeon","objective": "do2.run.systems.clank.blocked"},"color": "aqua"},{"text": "\\uE0C3"},{"text": "\\n§lArtifact:\\n§r§fFound "},{"storage": "stats_display","nbt": "artifact_symbol"},{"text": " valued at "},{"score": {"name": "$dungeon","objective": "do2.run.artifactValue"},"color": "aqua"},{"text": "\\uE0A3"}]'}
