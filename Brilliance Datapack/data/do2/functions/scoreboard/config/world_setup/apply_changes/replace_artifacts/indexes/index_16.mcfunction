# - Each index_X changes only Items[X] -


# Check if artifake or artifact
data modify storage do2:utility tangofy_artifact_name set from block ~ ~ ~ Items[16].tag.display.Name
function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/deduce_if_artifake

# - Change Display -
# BED = Torchy
execute if score $is_artifake do2.utility.modelDataTarget matches 0 if score $dungeon do2.utility.modelDataTarget matches 20 run data modify block ~ ~ ~ Items[16].tag.display set value {Lore: ['{"text":"No longer is this just a figment."}','{"text":"An enchanted torch has now evolved beyond its life of secrecy."}'], Name: '{"bold":true,"color":"gold","text":"Completed Torchy (24)"}'}
execute if score $is_artifake do2.utility.modelDataTarget matches 1 if score $dungeon do2.utility.modelDataTarget matches 20 run data modify block ~ ~ ~ Items[16].tag.display set value {Lore: ['{"text":"No longer is this just a figment."}','{"text":"An enchanted torch has now evolved beyond its life of secrecy."}'], Name: '{"bold":true,"color":"gold","text":"Completed Torchy"}'}
execute if score $is_artifake do2.utility.modelDataTarget matches 0 if score $dungeon do2.utility.modelDataTarget matches 45 run data modify block ~ ~ ~ Items[16].tag.display set value {Lore: ['{"text":"Also Omega. Probably Mega as well."}'], Name: '{"bold":true,"color":"gold","text":"Bionic Eye of Doom (24)"}'}
execute if score $is_artifake do2.utility.modelDataTarget matches 1 if score $dungeon do2.utility.modelDataTarget matches 45 run data modify block ~ ~ ~ Items[16].tag.display set value {Lore: ['{"text":"Also Omega. Probably Mega as well."}'], Name: '{"bold":true,"color":"gold","text":"Bionic Eye of Doom"}'}
# WOG = Hattificator
execute if score $is_artifake do2.utility.modelDataTarget matches 0 if score $dungeon do2.utility.modelDataTarget matches 35 run data modify block ~ ~ ~ Items[16].tag.display set value {Lore: ['{"text":"Hand knitted with care, this headpiece empowers the wearer with style, confidence, and +2 Charisma."}','{"text":"Prerequisites: Must have a shaven noggin."}'], Name: '{"bold":true,"color":"gold","text":"Hattificator #26 (22)"}'}
execute if score $is_artifake do2.utility.modelDataTarget matches 1 if score $dungeon do2.utility.modelDataTarget matches 35 run data modify block ~ ~ ~ Items[16].tag.display set value {Lore: ['{"text":"Hand knitted with care, this headpiece empowers the wearer with style, confidence, and +2 Charisma."}','{"text":"Prerequisites: Must have a shaven noggin."}'], Name: '{"bold":true,"color":"gold","text":"Hattificator #26"}'}
execute if score $is_artifake do2.utility.modelDataTarget matches 0 if score $dungeon do2.utility.modelDataTarget matches 46 run data modify block ~ ~ ~ Items[16].tag.display set value {Lore: ['{"text":"Makes everything gorgeous.  Of course."}'], Name: '{"bold":true,"color":"gold","text":"Wand of Gorgeousness (22)"}'}
execute if score $is_artifake do2.utility.modelDataTarget matches 1 if score $dungeon do2.utility.modelDataTarget matches 46 run data modify block ~ ~ ~ Items[16].tag.display set value {Lore: ['{"text":"Makes everything gorgeous.  Of course."}'], Name: '{"bold":true,"color":"gold","text":"Wand of Gorgeousness"}'}


# - Change CustomModelData -
# BED = Torchy
execute if score $dungeon do2.utility.modelDataTarget matches 20 run data modify block ~ ~ ~ Items[16].tag.CustomModelData set value 45
execute if score $dungeon do2.utility.modelDataTarget matches 45 run data modify block ~ ~ ~ Items[16].tag.CustomModelData set value 20
# WOG = Hattificator
execute if score $dungeon do2.utility.modelDataTarget matches 35 run data modify block ~ ~ ~ Items[16].tag.CustomModelData set value 46
execute if score $dungeon do2.utility.modelDataTarget matches 46 run data modify block ~ ~ ~ Items[16].tag.CustomModelData set value 35

# Cleanup
scoreboard players reset $is_artifake do2.utility.modelDataTarget
data remove storage do2:utility tangofy_artifact_name
