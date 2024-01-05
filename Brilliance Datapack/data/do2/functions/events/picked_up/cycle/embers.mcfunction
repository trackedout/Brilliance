# Give a tracked ember
give @s minecraft:iron_nugget{tracked: 1b,  CustomModelData: 3, display: {Name: '{"text":"❄☠ Decked Out Frost Ember ☠❄"}'}} 1

# track a ember pick up
scoreboard players add @s do2.run.items.embers 1

#track we gave a ember to the players
scoreboard players remove @s do2.utility.embersToGive 1

# If player doesn't have any more embers left to give
# revoke the advancement that called it.
execute if score @s do2.utility.embersToGive matches ..0 run advancement revoke @s only do2:utility/picked_up/embers

# If we still have to give more embers. Cycle it again.
execute if score @s do2.utility.embersToGive matches 1.. run function do2:events/picked_up/cycle/embers
