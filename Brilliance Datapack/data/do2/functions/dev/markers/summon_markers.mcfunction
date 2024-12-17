execute as @e[type=bat,tag=do2.marker_editor] at @s run kill @e[type=area_effect_cloud,tag=do2.marker_editor,limit=1,sort=nearest,distance=..10]
execute as @e[type=bat,tag=do2.marker_editor] at @s run kill @e[type=armor_stand,tag=do2.marker_editor,limit=1,sort=nearest,distance=..10]
execute as @e[type=bat,tag=do2.marker_editor] at @s run kill @s

execute as @e[type=bee,tag=do2.marker_editor] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 2147483647,Tags:["do2.marker_editor"]}
execute as @e[type=bee,tag=do2.marker_editor] at @s run kill @s

execute as @e[type=area_effect_cloud,tag=do2.marker_editor,tag=!do2.marker_visible] at @s run summon armor_stand ~ ~ ~ {CustomNameVisible:1b,Tags:["do2.marker_editor"],NoGravity:1b,Invulnerable:1b,Glowing:1b,Small:1b,Invisible:1b,CustomName:'{"text":"Temporary Marker","color":"dark_green"}'}
execute as @e[type=area_effect_cloud,tag=do2.marker_editor,tag=!do2.marker_visible] at @s run tag @s add do2.marker_visible

