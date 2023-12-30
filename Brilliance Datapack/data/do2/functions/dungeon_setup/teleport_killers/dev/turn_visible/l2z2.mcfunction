team add L2Z2 "Level 2; Zone 2."
team modify L2Z2 color yellow
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L2Z2) Teleport Marker","color":"yellow"}',CustomNameVisible:1b,Tags:["frustrated_marker","L2Z2"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add frustrated_visible
execute as @e[type=minecraft:armor_stand,tag=L2Z2] run team join L2Z2 @s
