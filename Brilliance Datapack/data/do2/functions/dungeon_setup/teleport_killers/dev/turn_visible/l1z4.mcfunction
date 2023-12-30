team add L1Z4 "Level 1; Zone 4."
team modify L1Z4 color gray
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L1Z4) Teleport Marker","color":"gray"}',CustomNameVisible:1b,Tags:["frustrated_marker","L1Z4"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add frustrated_visible
execute as @e[type=minecraft:armor_stand,tag=L1Z4] run team join L1Z4 @s
