# - Start Log -
execute as @a[scores={do2.logs.player_actions=2..}] run tellraw @s ["",{"text":"[§9B§r]: Artifact Converted. "}]
# - End Log -

execute as @p[tag=do2.received_shulker] as @p[tag=do2.received_shulker] run scoreboard players set @s do2.run.convertedArtifake 1

# Agronet handling
function do2:agronet/add_artifake

# NOW: determine WHICH artifact got converted.


# ONLY 1 ARTIFACT CAN BE FOUND
# execute as everyone.
# if that player has found an artifact.
# that that artifact got converted.
execute as @a if score @s do2.run.foundArtifact matches 10 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.PWS 1
execute as @a if score @s do2.run.foundArtifact matches 11 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.CF1 1
execute as @a if score @s do2.run.foundArtifact matches 12 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.CUS 1
execute as @a if score @s do2.run.foundArtifact matches 13 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.HGT 1
execute as @a if score @s do2.run.foundArtifact matches 14 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.TSL 1
execute as @a if score @s do2.run.foundArtifact matches 15 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.GGS 1
execute as @a if score @s do2.run.foundArtifact matches 16 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.GGR 1
execute as @a if score @s do2.run.foundArtifact matches 17 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.MGW 1
execute as @a if score @s do2.run.foundArtifact matches 18 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.HYB 1
execute as @a if score @s do2.run.foundArtifact matches 19 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.GDE 1
execute as @a if score @s do2.run.foundArtifact matches 20 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.BED 1
execute as @a if score @s do2.run.foundArtifact matches 28 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.JSS 1
execute as @a if score @s do2.run.foundArtifact matches 29 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.THL 1
execute as @a if score @s do2.run.foundArtifact matches 30 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.PPS 1
execute as @a if score @s do2.run.foundArtifact matches 31 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.HST 1
execute as @a if score @s do2.run.foundArtifact matches 32 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.PCL 1
execute as @a if score @s do2.run.foundArtifact matches 33 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.SHD 1
execute as @a if score @s do2.run.foundArtifact matches 34 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.DLP 1
execute as @a if score @s do2.run.foundArtifact matches 35 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.WGG 1
execute as @a if score @s do2.run.foundArtifact matches 36 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.MDM 1
execute as @a if score @s do2.run.foundArtifact matches 37 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.MKY 1
execute as @a if score @s do2.run.foundArtifact matches 38 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.SKA 1
execute as @a if score @s do2.run.foundArtifact matches 39 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.OFP 1
execute as @a if score @s do2.run.foundArtifact matches 40 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.BAP 1
execute as @a if score @s do2.run.foundArtifact matches 41 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.KNH 1
execute as @a if score @s do2.run.foundArtifact matches 42 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.ASV 1
execute as @a if score @s do2.run.foundArtifact matches 43 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.HAY 1
execute as @a if score @s do2.run.foundArtifact matches 44 as @p[tag=do2.received_shulker] run scoreboard players add @s do2.artifakes.SPS 1

