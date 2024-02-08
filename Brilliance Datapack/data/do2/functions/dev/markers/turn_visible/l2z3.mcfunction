team add L2Z3 "Level 2; Zone 3."
team modify L2Z3 color dark_blue
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L2Z3) Teleport Marker","color":"dark_blue"}',CustomNameVisible:1b,Tags:["zone_marker","L2Z3"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add frustrated_visible
execute as @e[type=minecraft:armor_stand,tag=L2Z3] run team join L2Z3 @s
