kill @e[tag=do2.statistics_room,tag=!do2.stats.spoilers]

execute unless score @p do2.depth_charge_success matches 0.. run scoreboard players set @p do2.run.depth_charge_success 0
execute unless score @p do2.lifetime.pickedup.bombs matches 0.. run scoreboard players set @p do2.lifetime.pickedup.bombs 0
execute unless score @p do2.submissions.bombs matches 0.. run scoreboard players set @p do2.submissions.bombs 0
execute unless score @p do2.submissions.dm_key matches 0.. run scoreboard players set @p do2.submissions.dm_key 0
execute unless score @p do2.submissions.dm_key matches 0.. run scoreboard players set @p do2.submissions.dm_key 0
execute unless score @p do2.rustyrepairs matches 0.. run scoreboard players set @p do2.rustyrepairs 0

execute unless entity @e[tag=do2.statistics_room,tag=do2.stats.spoilers] run summon minecraft:text_display -492 125 1990 {alignment:"center",Rotation:[90f,0f], billboard:"fixed",background:26,Tags:["do2.statistics_room","do2.stats.spoilers"]}

# - Spoilers -
# TnT depth dives
# Rusty Repairs
# DM keys submitted
# Bombs Found
# Bombs Submitted
# Tendrils Found

data modify storage stats_display bombsPickedUp_name set value "§fBombs Picked Up: "
data modify storage stats_display bombsSubmitted_name set value "§fBombs Submitted: "
data modify storage stats_display hideoutsReached_name set value "§fHideouts Reached: "
data modify storage stats_display tntDepthDives_name set value "§fTotal TnT Depth Charges: "
data modify storage stats_display rustyRepairs_name set value "§fRusty Repairs: "
data modify storage stats_display tendrilsFound_name set value "§fTendrils Found: "

data modify storage stats_display redacted set value "§7[§k-- §7REDACTED §k--§7]: "
execute if score @p do2.depth_charge_success matches 0 run data modify storage stats_display tntDepthDives_name set from storage stats_display redacted
execute if score @p do2.lifetime.pickedup.bombs matches 0 run data modify storage stats_display bombsPickedUp_name set from storage stats_display redacted
execute if score @p do2.submissions.bombs matches 0 run data modify storage stats_display bombsSubmitted_name set from storage stats_display redacted
execute if score @p do2.submissions.dm_key matches 0 run data modify storage stats_display hideoutsReached_name set from storage stats_display redacted
execute if score @p do2.rustyrepairs matches 0 run data modify storage stats_display rustyRepairs_name set from storage stats_display redacted
execute if score @p do2.tendriltravels matches 0 run data modify storage stats_display tendrilsFound_name set from storage stats_display redacted
#§4[§mREDACTED§4]:

execute as @e[tag=do2.statistics_room,tag=do2.stats.spoilers] if entity @s run data merge entity @s {text:'[{"text":"§l§dSpoilers §fStatistics!§r\\n"},{"text":"\\n"},{"storage": "stats_display","nbt": "bombsPickedUp_name"},{"score":{"name":"@p","objective":"do2.lifetime.pickedup.bombs"},"color":"aqua","italic":true},{"text":"\\n"},{"storage": "stats_display","nbt": "bombsSubmitted_name"},{"score":{"name":"@p","objective":"do2.submissions.bombs"},"color":"aqua","italic":true},{"text":"\\n"},{"storage": "stats_display","nbt": "hideoutsReached_name"},{"score":{"name":"@p","objective":"do2.submissions.dm_key"},"color":"aqua","italic":true},{"text":"\\n"},{"storage": "stats_display","nbt": "tntDepthDives_name"},{"score":{"name":"@p","objective":"do2.depth_charge_success"},"color":"aqua","italic":true},{"text":"\\n"},{"storage": "stats_display","nbt": "rustyRepairs_name"},{"score":{"name":"@p","objective":"do2.rustyrepairs"},"color":"aqua","italic":true},{"text":"\\n"},{"storage": "stats_display","nbt": "tendrilsFound_name"},{"score":{"name":"@p","objective":"do2.tendriltravels"},"color":"aqua","italic":true}]'}
