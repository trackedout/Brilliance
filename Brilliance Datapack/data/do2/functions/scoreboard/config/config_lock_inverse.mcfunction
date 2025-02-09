execute unless entity @e[tag=do2.stop_settings1] run summon minecraft:armor_stand -515. 115 1956 {CustomName:'{"text":"Rest of world inaccessible.","color":"red"}',CustomNameVisible:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["do2.stop_settings","do2.stop_settings1"]}
execute unless entity @e[tag=do2.stop_settings2] run summon minecraft:armor_stand -515.5 113.7 1956 {CustomName:'{"text":"Approach to return to game.","color":"red"}',CustomNameVisible:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["do2.stop_settings","do2.stop_settings2"]}
execute unless entity @e[tag=do2.stop_settings3] run summon minecraft:item_display -514.65 116 1956 {Tags:["do2.stop_settings","do2.stop_settings3"],width:1f,height:1f,item:{id:"minecraft:barrier",Count:1b},view_range:2f,transformation:{left_rotation:[0f,-1f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,2f]}}
fill -515 118 1954 -515 114 1958 minecraft:iron_bars replace air

# Hide the names if an entity isn't nearby
execute positioned -515 116 1956 unless entity @p[distance=..10] as @e[type=armor_stand,tag=do2.stop_settings] run data merge entity @s {CustomNameVisible:0b}
execute positioned -515 116 1956 if entity @p[distance=..10] as @e[type=armor_stand,tag=do2.stop_settings] run data merge entity @s {CustomNameVisible:1b}


execute as @a[x=-517,dx=1,y=113,dy=7,z=1953,dz=6] if entity @s[tag=do2.staff,tag=!do2.staff.warned] run tellraw @s ["",{"text":"§f[§9B§r]: You have the tag [§bdo2.staff§r], and this has stopped:\n - §5tp "},{"selector":"@s","color":"dark_purple"},{"text":"§5-550 113 1980 90 0\n§f[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/tp @s -512 114 1956 90 0"}},{"text":" to run the command anyway."}]
execute as @a[x=-517,dx=1,y=113,dy=7,z=1953,dz=6] if entity @s[tag=do2.staff,tag=!do2.staff.warned] run tag @s add do2.staff.warned

execute as @a[x=-517,dx=1,y=113,dy=7,z=1953,dz=6] unless entity @s[tag=do2.staff] run tp @s -550 113 1980 90 0
