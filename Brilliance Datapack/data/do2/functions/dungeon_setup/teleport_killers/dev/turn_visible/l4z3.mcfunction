team add L4Z3 "Level 4; Zone 3."
team modify L4Z3 color aqua
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L4Z3) Teleport Marker","color":"aqua"}',CustomNameVisible:1b,Tags:["zone_marker","L4Z3"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add frustrated_visible
execute as @e[type=minecraft:armor_stand,tag=L4Z3] run team join L4Z3 @s
