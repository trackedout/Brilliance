# - Check if artifake or artifact. -
# Get substring
data modify storage do2:utility tangofy_artifact_name_value set string storage do2:utility tangofy_artifact_name -5 -3
# (we're only looking for 2 artifacts, and 24 and 22 are their value so it's fine that it's hard coded)
data modify storage do2:utility tangofy_artifact_name_value_lookup_1 set value "22"
data modify storage do2:utility tangofy_artifact_name_value_lookup_2 set value "24"
# If tangofy_artifact_name_value matches the string "24" or "22" it's an artifact. Else it's artifake
execute store result score $match22 do2.utility.modelDataTarget run data modify storage do2:utility tangofy_artifact_name_value_lookup_1 set from storage do2:utility tangofy_artifact_name_value
execute store result score $match24 do2.utility.modelDataTarget run data modify storage do2:utility tangofy_artifact_name_value_lookup_2 set from storage do2:utility tangofy_artifact_name_value

# Check if EITHER succeeded.
scoreboard players set $is_artifake do2.utility.modelDataTarget 1
execute if score $match22 do2.utility.modelDataTarget matches 0 run scoreboard players set $is_artifake do2.utility.modelDataTarget 0
execute if score $match24 do2.utility.modelDataTarget matches 0 run scoreboard players set $is_artifake do2.utility.modelDataTarget 0

# cleanup
scoreboard players reset $match22 do2.utility.modelDataTarget
scoreboard players reset $match24 do2.utility.modelDataTarget
data remove storage do2:utility tangofy_artifact_name
data remove storage do2:utility tangofy_artifact_name_value
data remove storage do2:utility tangofy_artifact_name_value_lookup_1
data remove storage do2:utility tangofy_artifact_name_value_lookup_2

# - $is_artifake do2.utility.modelDataTarget = whether is artifake or not. -
