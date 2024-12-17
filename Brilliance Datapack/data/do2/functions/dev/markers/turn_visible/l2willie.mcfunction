team add L2WILLIE "Level 2; Willie Lake."
team modify L2WILLIE color white
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L2WILLIE) Teleport Marker","color":"dark_aqua"}',CustomNameVisible:1b,Tags:["zone_marker","L2WILLIE"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add frustrated_visible
execute as @e[type=minecraft:armor_stand,tag=L2WILLIE] run team join L2WILLIE @s
