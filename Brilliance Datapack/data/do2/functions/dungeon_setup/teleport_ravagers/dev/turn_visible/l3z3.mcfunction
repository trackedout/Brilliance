team add L3Z3 "Level 3; Zone 3."
team modify L3Z3 color blue
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L3Z3) Teleport Marker","color":"blue"}',CustomNameVisible:1b,Tags:["frustrated_marker","L3Z3"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add frustrated_visible
execute as @e[type=minecraft:armor_stand,tag=L3Z3] run team join L3Z3 @s
