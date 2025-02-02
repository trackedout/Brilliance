# triggers when an artifact was submitted from L4, L3, L2, OR L1.
# Triggers RIGHT before sfx is played

# - Start Log -
execute if score $dungeon do2.run.deepest_floor matches 1 as @a[scores={do2.logs.player_actions=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Compass was submitted on §bLevel 1§r§f."}]
execute if score $dungeon do2.run.deepest_floor matches 2 as @a[scores={do2.logs.player_actions=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Compass was submitted on §4Level 2§r§f."}]
execute if score $dungeon do2.run.deepest_floor matches 3 as @a[scores={do2.logs.player_actions=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Compass was submitted on §0Level 3§r§f."}]
execute if score $dungeon do2.run.deepest_floor matches 4 as @a[scores={do2.logs.player_actions=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Compass was submitted on §5Level 4§r§f."}]
# - End Log -

# Agronet event
execute if score $dungeon do2.run.deepest_floor matches 1 run function do2:external/agronet/logs/player_actions/compass_submitted_l1 
execute if score $dungeon do2.run.deepest_floor matches 2 run function do2:external/agronet/logs/player_actions/compass_submitted_l2
execute if score $dungeon do2.run.deepest_floor matches 3 run function do2:external/agronet/logs/player_actions/compass_submitted_l3
execute if score $dungeon do2.run.deepest_floor matches 4 run function do2:external/agronet/logs/player_actions/compass_submitted_l4