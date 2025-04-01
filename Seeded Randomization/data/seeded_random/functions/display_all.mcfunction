execute as @e[type=interaction,tag=seeded_random.dispenser] at @s unless entity @e[type=shulker,tag=seeded_random.dispenser,distance=..2] run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,NoAI:1b,Invulnerable:1b,Tags:["seeded_random.dispenser"],ActiveEffects:[{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 14, Amplifier: 1b}]}
execute as @e[type=interaction,tag=seeded_random.dropper] at @s unless entity @e[type=shulker,tag=seeded_random.dropper,distance=..2] run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,NoAI:1b,Invulnerable:1b,Tags:["seeded_random.dropper"],ActiveEffects:[{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: -1, Id: 14, Amplifier: 1b}]}


effect give @e[type=minecraft:shulker,tag=seeded_random.dispenser] minecraft:glowing 2 1 true
effect give @e[type=minecraft:shulker,tag=seeded_random.dropper] minecraft:glowing 2 1 true
