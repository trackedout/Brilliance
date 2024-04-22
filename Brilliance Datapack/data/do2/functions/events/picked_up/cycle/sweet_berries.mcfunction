
# Give a tracked berry
give @s minecraft:sweet_berries{tracked:1b} 1

# track a berry pick up
scoreboard players add @s do2.run.items.sweet_berries 1
scoreboard players add $dungeon do2.run.items.sweet_berries 1

#track we gave a berry to the players
scoreboard players remove @s do2.utility.berriesToGive 1

# If player doesn't have any more berries left to give
# revoke the advancement that called it.
execute if score @s do2.utility.berriesToGive matches ..0 run advancement revoke @s only do2:utility/picked_up/sweet_berries

# If we still have to give more berries. Cycle it again.
execute if score @s do2.utility.berriesToGive matches 1.. run function do2:events/picked_up/cycle/sweet_berries
