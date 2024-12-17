team add L2Z1 "Level 2; Zone 1."
team modify L2Z1 color dark_aqua
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L2Z1) Teleport Marker","color":"dark_aqua"}',CustomNameVisible:1b,Tags:["zone_marker","L2Z1"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add marker_visible
execute as @e[type=minecraft:armor_stand,tag=L2Z1] run team join L2Z1 @s
