# Make sure observers don't notice
function seeded_random:inv_actions/observer_checking/check

execute at @s on attacker run playsound minecraft:entity.evoker.death master @s ~ ~ ~ 1 1.5
execute at @s run particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 0.01 20
execute at @s run tp @e[type=shulker,distance=..2,tag=seeded_random.dispenser] ~ -1000 ~
execute at @s run tp @e[type=shulker,distance=..2,tag=seeded_random.dropper] ~ -1000 ~
execute at @s run kill @e[type=shulker,distance=..2,tag=seeded_random.dispenser]
execute at @s run kill @e[type=shulker,distance=..2,tag=seeded_random.dropper]
execute at @s run kill @e[type=block_display,distance=..2,tag=seeded_random.dispenser]
execute at @s run kill @e[type=block_display,distance=..2,tag=seeded_random.dropper]
execute at @s run kill @e[type=interaction,distance=..2,tag=seeded_random.dispenser]
execute at @s run kill @e[type=interaction,distance=..2,tag=seeded_random.dropper]


execute at @s in seeded_random:seeded_random positioned ~ ~ ~ run forceload add ~ ~
execute at @s in seeded_random:seeded_random run clone ~ ~ ~ ~ ~ ~ to minecraft:overworld ~ ~ ~ replace force
execute at @s in seeded_random:seeded_random run setblock ~ ~ ~ air
execute at @s in seeded_random:seeded_random positioned ~ ~ ~ run forceload remove ~ ~
kill @s
