team add L2WILLY "Level 2; Willy Lake."
team modify L2WILLY color white
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L2WILLY) Teleport Marker","color":"dark_aqua"}',CustomNameVisible:1b,Tags:["frustrated_marker","L2WILLY"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add frustrated_visible
execute as @e[type=minecraft:armor_stand,tag=L2WILLY] run team join L2WILLY @s
