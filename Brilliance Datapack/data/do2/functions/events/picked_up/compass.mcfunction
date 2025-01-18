advancement revoke @s only do2:utility/picked_up/compass

execute unless score $dungeon do2.run.compass_lodestone_id matches 1.. run function do2:utility/calculate_compass_id

# - Start Log -
tag @s add compassPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] if score @p[tag=compassPickUpLogTarget] do2.utility.coinsToGive matches 1 run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=compassPickUpLogTarget]"},{"text":" picked up the compass pointing to lodestone #"},{"color":"aqua","score":{"name":"@p[tag=compassPickUpLogTarget]","objective":"do2.run.compass_lodestone_id"}}]
tag @s remove compassPickUpLogTarget
# - End Log -

execute as @p[tag=do2.received_shulker] run scoreboard players operation @s do2.run.compass_lodestone_id = $dungeon do2.run.compass_lodestone_id

