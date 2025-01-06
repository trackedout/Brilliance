team add L0Z1 "Level 0; Zone 1."
team modify L0Z1 color dark_purple
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L0Z1) Teleport Marker","color":"dark_purple"}',CustomNameVisible:1b,Tags:["zone_marker","L0Z1"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add marker_visible
execute as @e[type=minecraft:armor_stand,tag=L0Z1] run team join L0Z1 @s
