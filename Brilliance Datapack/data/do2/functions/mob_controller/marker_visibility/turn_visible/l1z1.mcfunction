team add L1Z1 "Level 1; Zone 1."
team modify L1Z1 color red
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L1Z1) Teleport Marker","color":"red"}',CustomNameVisible:1b,Tags:["zone_marker","L1Z1"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add marker_visible
execute as @e[type=minecraft:armor_stand,tag=L1Z1] run team join L1Z1 @s
