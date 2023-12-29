# Give a tracked crown
give @s minecraft:iron_nugget{tracked:1b, CustomRoleplayData: 1b, RepairCost: 0, CustomModelData: 2, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}

# track a crown pick up
scoreboard players add @s do2.run.items.crowns 1

#track we gave a crown to the players
scoreboard players remove @s do2.utility.crownsToGive 1

# If player doesn't have any more crowns left to give
# revoke the advancement that called it.
execute if score @s do2.utility.crownsToGive matches ..0 run advancement revoke @s only do2:utility/picked_up/crowns

# If we still have to give more crowns. Cycle it again.
execute if score @s do2.utility.crownsToGive matches 1.. run function do2:events/picked_up/cycle/crowns