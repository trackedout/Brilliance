team add L3Z1 "Level 3; Zone 1."
team modify L3Z1 color dark_green
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L3Z1) Teleport Marker","color":"dark_green"}',CustomNameVisible:1b,Tags:["zone_marker","L3Z1"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add frustrated_visible
execute as @e[type=minecraft:armor_stand,tag=L3Z1] run team join L3Z1 @s
