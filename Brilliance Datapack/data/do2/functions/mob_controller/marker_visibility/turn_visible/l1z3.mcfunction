team add L1Z3 "Level 1; Zone 3."
team modify L1Z3 color gold
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L1Z3) Teleport Marker","color":"gold"}',CustomNameVisible:1b,Tags:["zone_marker","L1Z3"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add marker_visible
execute as @e[type=minecraft:armor_stand,tag=L1Z3] run team join L1Z3 @s
