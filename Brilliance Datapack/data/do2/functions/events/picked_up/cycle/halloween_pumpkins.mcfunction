# Give a tracked pumpkin
give @s minecraft:pumpkin{tracked:1b, display: {Name: '{"color":"dark_purple","text":"❄☠ Halloween Pumpkin ☠❄"}'}}

# track a pumpkin pick up
scoreboard players add @s do2.run.items.pumpkins 1

#track we gave a pumpkin to the players
scoreboard players remove @s do2.utility.pumpkinsToGive 1

# If player doesn't have any more pumpkins left to give
# revoke the advancement that called it.
execute if score @s do2.utility.pumpkinsToGive matches ..0 run advancement revoke @s only do2:utility/picked_up/halloween_pumpkins

# If we still have to give more pumpkins. Cycle it again.
execute if score @s do2.utility.pumpkinsToGive matches 1.. run function do2:events/picked_up/cycle/halloween_pumpkins
