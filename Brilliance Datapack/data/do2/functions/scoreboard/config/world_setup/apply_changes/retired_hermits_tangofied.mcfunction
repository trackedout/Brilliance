# - Artifacts
function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_all_artifacts

# - Snow Scoreboard
execute if score $dungeon do2.config.wc.lobbyChangesExists matches 1 run setblock -528 114 1972 air
execute if score $dungeon do2.config.wc.lobbyChangesExists matches 1 run setblock -528 114 1973 air
execute if score $dungeon do2.config.wc.lobbyChangesExists matches 1 run data modify block -528 113 1974 front_text.messages set value ['{"text":""}','{"text":""}','{"text":""}','{"text":""}']

# - Cubbies
execute if score $dungeon do2.config.wc.cubbiesExist matches 1 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/tangofy_cubbies
execute if score $dungeon do2.config.wc.cubbiesExist matches 1 run schedule function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/kill_items_cubbies 1t

# - Easter Egg Display
execute unless score $dungeon do2.config.wc.easter_eggs matches 0 positioned -486 114 1975 as @e[type=minecraft:glow_item_frame,limit=1,sort=nearest,distance=..2] run data modify entity @s Item.tag.CustomModelData set value 14
execute unless score $dungeon do2.config.wc.easter_eggs matches 0 positioned -486 114 1978 as @e[type=minecraft:glow_item_frame,limit=1,sort=nearest,distance=..2] run data modify entity @s Item.tag.CustomModelData set value 15
# - Easter Egg Locations
execute unless score $dungeon do2.config.wc.easter_eggs matches 0 positioned -535 47 1972 as @e[type=minecraft:glow_item_frame,limit=1,sort=nearest,distance=..2] run data modify entity @s Item.tag.CustomModelData set value 14
execute unless score $dungeon do2.config.wc.easter_eggs matches 0 positioned -554 51 2027 as @e[type=minecraft:glow_item_frame,limit=1,sort=nearest,distance=..2] run data modify entity @s Item.tag.CustomModelData set value 15

# Museum
execute if score $dungeon do2.config.wc.museumExists matches 1 positioned -602 171.5 2037 as @e[distance=..1.2,sort=nearest,limit=1] run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_item_frame
execute if score $dungeon do2.config.wc.museumExists matches 1 run data modify block -602 172 2037 front_text.messages set value ['{"text":"Hattificator #26"}','{"text":"Level 2 Artifact"}','{"text":"22 Frost Embers"}','{"text":""}']
execute if score $dungeon do2.config.wc.museumExists matches 1 positioned -604 171.5 2040 as @e[distance=..1.2,sort=nearest,limit=1] run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_item_frame
execute if score $dungeon do2.config.wc.museumExists matches 1 run data modify block -604 171 2040 front_text.messages set value ['{"text":"Completed"}','{"text":"Torchy"}','{"text":"Level 2 Artifact"}','{"text":"24 Frost Embers"}']
