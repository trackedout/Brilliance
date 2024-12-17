team add fish_marker "Fish Marker"
team modify fish_marker color dark_purple
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"Fish Marker","color":"dark_purple"}',CustomNameVisible:1b,Tags:["zone_marker","fish_marker"], ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 24, Amplifier: 0b}]}
tag @s add marker_visible
execute as @e[type=minecraft:armor_stand,tag=fish_marker] run team join fish_marker @s
