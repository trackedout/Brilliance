team add L2Z5 "Level 2; Zone 5."
team modify L2Z5 color black
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L2Z5) Teleport Marker","color":"black"}',CustomNameVisible:1b,Tags:["zone_marker","L2Z5"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add frustrated_visible
execute as @e[type=minecraft:armor_stand,tag=L2Z5] run team join L2Z5 @s
