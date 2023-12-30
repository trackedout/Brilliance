team add L1Z2 "Level 1; Zone 2."
team modify L1Z2 color green
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L1Z2) Teleport Marker","color":"green"}',CustomNameVisible:1b,Tags:["frustrated_marker","L1Z2"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add frustrated_visible
execute as @e[type=minecraft:armor_stand,tag=L1Z2] run team join L1Z2 @s
