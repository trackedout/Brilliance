# Iskall (-550 116 2037 / -558 109 2028)
place template do2:world_setup/cubbies/empty_cubby -550 108 2027 clockwise_90 none
fill -553 107 2038 -550 103 2028 air
fill -555 107 2028 -558 103 2038 air
fill -554 104 2037 -554 104 2029 air
setblock -554 109 2026 minecraft:polished_basalt[axis=y]
place template do2:world_setup/cubbies/wall_m -558 115 2030 counterclockwise_90
# Stress (-510 116 2037 / -518 109 2028)
setblock -514 109 2026 minecraft:polished_basalt[axis=y]
place template do2:world_setup/cubbies/empty_cubby -510 108 2027 clockwise_90 none
place template do2:world_setup/cubbies/wall_m -518 115 2030 counterclockwise_90

# Artifact locations
execute positioned -511 110 1992 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_current_position
execute positioned -506 111 1988 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_current_position
execute positioned -494 110 1988 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_current_position
execute positioned -484 112 1988 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_current_position
execute positioned -470 112 2000 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_current_position
execute positioned -470 110 2022 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_current_position
execute positioned -498 111 2028 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_current_position
execute positioned -547 110 2030 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_current_position
execute positioned -578 110 2012 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_current_position
execute positioned -534 110 1988 run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_current_position

# Item Frames
execute positioned -501 112.5 1989 as @e[distance=..1.2,sort=nearest,limit=1] run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_item_frame
execute positioned -501 113.5 1994 as @e[distance=..1.2,sort=nearest,limit=1] run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_item_frame
execute positioned -496 111.5 1988 as @e[distance=..1.2,sort=nearest,limit=1] run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_item_frame
execute positioned -496 112.5 1988 as @e[distance=..1.2,sort=nearest,limit=1] run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_item_frame
execute positioned -474 112.5 1997 as @e[distance=..1.2,sort=nearest,limit=1] run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_item_frame
execute positioned -475 115.5 1997 as @e[distance=..1.2,sort=nearest,limit=1] run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_item_frame
execute positioned -540 113.5 2034 as @e[distance=..1.2,sort=nearest,limit=1] run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_item_frame
execute positioned -567 111.5 1994 as @e[distance=..1.2,sort=nearest,limit=1] run function do2:scoreboard/config/world_setup/apply_changes/replace_artifacts/replace_item_frame
