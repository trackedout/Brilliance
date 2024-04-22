# Give a tracked porkchop
give @s minecraft:cooked_porkchop{tracked:1b} 1

# track a porkchop pick up
scoreboard players add @s do2.run.items.pork_chops 1
scoreboard players add $dungeon do2.run.items.pork_chops 1

#track we gave a porkchop to the players
scoreboard players remove @s do2.utility.chopsToGive 1

# If player doesn't have any more porkchops left to give
# revoke the advancement that called it.
execute if score @s do2.utility.chopsToGive matches ..0 run advancement revoke @s only do2:utility/picked_up/porkchops

# If we still have to give more coins. Cycle it again.
execute if score @s do2.utility.chopsToGive matches 1.. run function do2:events/picked_up/cycle/porkchops
