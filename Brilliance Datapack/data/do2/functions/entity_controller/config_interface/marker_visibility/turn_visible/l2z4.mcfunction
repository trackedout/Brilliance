team add L2Z4 "Level 2; Zone 4."
team modify L2Z4 color dark_red
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L2Z4) Teleport Marker","color":"dark_red"}',CustomNameVisible:1b,Tags:["zone_marker","L2Z4"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add marker_visible
execute as @e[type=minecraft:armor_stand,tag=L2Z4] run team join L2Z4 @s
