# Give a tracked bomb
give @s minecraft:iron_nugget{ tracked: 1b,  CustomModelData: 208, display: {Name: '{"bold":true,"color":"dark_aqua","text":"❄☠ The Bomb ☠❄"}'}}

# track a bomb pick up
scoreboard players add @s do2.run.items.bombs 1
scoreboard players add $dungeon do2.run.items.bombs 1

#track we gave a bomb to the players
scoreboard players remove @s do2.utility.bombsToGive 1

# If player doesn't have any more bombs left to give
# revoke the advancement that called it.
execute if score @s do2.utility.bombsToGive matches ..0 run advancement revoke @s only do2:utility/picked_up/bombs

# If we still have to give more bombs. Cycle it again.
execute if score @s do2.utility.bombsToGive matches 1.. run function do2:events/picked_up/cycle/bombs
