team add L4Z1 "Level 4; Zone 1."
team modify L4Z1 color dark_purple
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L4Z1) Teleport Marker","color":"dark_purple"}',CustomNameVisible:1b,Tags:["frustrated_marker","L4Z1"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add frustrated_visible
execute as @e[type=minecraft:armor_stand,tag=L4Z1] run team join L4Z1 @s
