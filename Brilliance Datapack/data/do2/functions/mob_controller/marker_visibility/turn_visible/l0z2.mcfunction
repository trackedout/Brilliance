team add L0Z2 "Level 0; Zone 2."
team modify L0Z2 color light_purple
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L0Z2) Teleport Marker","color":"light_purple"}',CustomNameVisible:1b,Tags:["zone_marker","L0Z2"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add marker_visible
execute as @e[type=minecraft:armor_stand,tag=L0Z2] run team join L0Z2 @s
