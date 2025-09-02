# - Artifacts
function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_all_artifacts

# - Snow Scoreboard
execute if score $dungeon do2.config.wc.lobbyChangesExists matches 1 run setblock -528 114 1972 minecraft:snow[layers=2]
execute if score $dungeon do2.config.wc.lobbyChangesExists matches 1 run setblock -528 114 1973 minecraft:player_head[rotation=8]{SkullOwner:{Id:[I;2127779963,-430553463,-1865021215,497744135],Name:"iskall85",Properties:{textures:[{Signature:"CfTvamgyCKG5AB+s8xI/MOhqIuTNP3vH/1vLW6L5jnKmk2L2pVkehPsNaQ+LHSSrvHow8ZAETMleDN0BPPyBnKJF0fTSg3DAgyMvG9mytgE73Lhg/6v4ej1r6ApECXDZH8xsKKUm7PL7XVnQ5PXprUY8+5UqAPdWQITQE9iNEcM76DdjbP1DlQKESHMJOnVOdKldXaXlgxrTqXpy4Cd8rVDUmB2eRxqGtG/ZgjjZ5vQZxq4nRVqOi9CgCY+0bVmDOdkd/isa96z3rd7D0tHIw3w2Ww6cjpEMfsW/HLnco42YV4Vrcxa2UWRFDTkPI0+sUut9nU4hSooxF/CDG5+RBbiTtA8o++yZ9RdN6yQdaQMuwAjdIDOeM76OEU0Q7/SNJNsnAo7YDw+He7fb4eJGPm4x03meNyBnw0fqbBrgzG+bURkVuXsbUxvgMJWPKJ1+Wf2FxY35EeuKo7NEcKHf6/4wFHWItRkqioQ5BM25PlpXDJXaoN2g96i2W6qkK40AtDe5cQm5mmR7DFbFDv3Ir7wd75Cu0XGpUB4ZbgPkcCLXlZMvge4p6ttbhYpAz83jegSTrdOm+wpNajiWAEXMEcmCw7rxE/aBPRU9OrfWi/x5g7MfFHvydV1unuXWlgTPxZ5qQh5Cxcat5Nh8DSR4NUM7TjqvGUjZcik4sU8E/Zo=",Value:"ewogICJ0aW1lc3RhbXAiIDogMTY0Nzk1MDA5Mzc1NSwKICAicHJvZmlsZUlkIiA6ICI3ZWQzNTg3YmU2NTY0Njg5OTBkNjA4ZTExZGFhZjkwNyIsCiAgInByb2ZpbGVOYW1lIiA6ICJpc2thbGw4NSIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8xNDQ4MzRhM2ViNDIzNjM3NzA1ZjM0NTU5ZmM5NWEwMzIzNzA1Mjk5ZTU4YTBhY2JlZDUxNTBiMGZhNTA4MjA5IgogICAgfQogIH0KfQ=="}]}}}
execute if score $dungeon do2.config.wc.lobbyChangesExists matches 1 run data modify block -528 113 1974 front_text.messages set value ['{"text":""}', '{"text":"Mr. 85"}', '{"text":"of Doom"}', '{"text":""}']

# - Cubbies
execute if score $dungeon do2.config.wc.cubbiesExist matches 1 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/defaulted_cubbies

# - Easter Egg Display
execute unless score $dungeon do2.config.wc.easter_eggs matches 0 positioned -486 114 1975 as @e[type=minecraft:glow_item_frame,limit=1,sort=nearest,distance=..2] run data modify entity @s Item.tag.CustomModelData set value 30
execute unless score $dungeon do2.config.wc.easter_eggs matches 0 positioned -486 114 1978 as @e[type=minecraft:glow_item_frame,limit=1,sort=nearest,distance=..2] run data modify entity @s Item.tag.CustomModelData set value 35
# - Easter Egg Locations
execute unless score $dungeon do2.config.wc.easter_eggs matches 0 positioned -535 47 1972 as @e[type=minecraft:glow_item_frame,limit=1,sort=nearest,distance=..2] run data modify entity @s Item.tag.CustomModelData set value 30
execute unless score $dungeon do2.config.wc.easter_eggs matches 0 positioned -554 51 2027 as @e[type=minecraft:glow_item_frame,limit=1,sort=nearest,distance=..2] run data modify entity @s Item.tag.CustomModelData set value 35

# Museum
execute if score $dungeon do2.config.wc.museumExists matches 1 positioned -602 171.5 2037 as @e[distance=..1.2,sort=nearest,limit=1] run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_item_frame
execute if score $dungeon do2.config.wc.museumExists matches 1 run data modify block -602 172 2037 front_text.messages set value ['{"text":"Wand of"}','{"text":"Gorgeousness"}','{"text":"Level 2 Artifact"}','{"text":"22 Frost Embers"}']
execute if score $dungeon do2.config.wc.museumExists matches 1 positioned -604 171.5 2040 as @e[distance=..1.2,sort=nearest,limit=1] run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_item_frame
execute if score $dungeon do2.config.wc.museumExists matches 1 run data modify block -604 171 2040 front_text.messages set value ['{"text":"Bionic Eye of"}','{"text":"Doom"}','{"text":"Level 2 Artifact"}','{"text":"24 Frost Embers"}']
