# Give a tracked coin
give @s minecraft:iron_nugget{ tracked: 1b,  CustomModelData: 1, display: {Name: '{"text":"❄☠ Decked Out Coin ☠❄"}'}}

# track a coin pick up
scoreboard players add @s do2.run.items.coins 1
scoreboard players add $dungeon do2.run.items.coins 1

#track we gave a coin to the players
scoreboard players remove @s do2.utility.coinsToGive 1

# If player doesn't have any more coins left to give
# revoke the advancement that called it.
execute if score @s do2.utility.coinsToGive matches ..0 run advancement revoke @s only do2:utility/picked_up/coins

# If we still have to give more coins. Cycle it again.
execute if score @s do2.utility.coinsToGive matches 1.. run function do2:events/picked_up/cycle/coins
