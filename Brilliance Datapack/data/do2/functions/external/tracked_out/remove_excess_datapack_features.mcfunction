# No need for these datapacks
execute if score $dungeon do2.utility.onServer matches 1 run datapack disable "file/armor_statues_v2.9.4-trackedout.zip"
datapack disable "file/decked_out.zip"
datapack disable "file/bundles 1.20.zip"
datapack disable "file/hard on start v1.0.0.zip"
# Remove these triggers
scoreboard objectives remove adjustment_wand
scoreboard objectives remove as_help
scoreboard objectives remove as_repeat
scoreboard objectives remove as_trigger
scoreboard objectives remove if_invisible
scoreboard objectives remove pointer_wand

schedule clear armor_statues:tick
schedule clear armor_statues:second
