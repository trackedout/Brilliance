# Give a tracked glow_berries
give @s minecraft:glow_berries{tracked:1b, display: {Name: '{"text":"❄☠ Glow Berries ☠❄"}'}}

# track a glow_berries pick up
scoreboard players add @s do2.run.items.glow_berries 1

#track we gave a glow_berries to the players
scoreboard players remove @s do2.utility.glowberriesToGive 1

# If player doesn't have any more glow_berries left to give
# revoke the advancement that called it.
execute if score @s do2.utility.glowberriesToGive matches ..0 run advancement revoke @s only do2:utility/picked_up/glow_berries

# If we still have to give more glow_berries. Cycle it again.
execute if score @s do2.utility.glowberriesToGive matches 1.. run function do2:events/picked_up/cycle/glow_berries
