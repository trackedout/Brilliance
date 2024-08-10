# - Start Log -
execute as @a[scores={do2.logs.player_actions=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Player escaped the dungeon with a §acrown§r."}]
# - End Log -

scoreboard players add @a[tag=do2.received_shulker] do2.lifetime.escaped.crowns 1
scoreboard players add $dungeon do2.lifetime.escaped.crowns 1

