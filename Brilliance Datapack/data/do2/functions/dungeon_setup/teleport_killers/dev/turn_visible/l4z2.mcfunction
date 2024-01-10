team add L4Z2 "Level 4; Zone 2."
team modify L4Z2 color white
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"(L4Z2) Teleport Marker","color":"white"}',CustomNameVisible:1b,Tags:["zone_marker","L4Z2"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add frustrated_visible
execute as @e[type=minecraft:armor_stand,tag=L4Z2] run team join L4Z2 @s
