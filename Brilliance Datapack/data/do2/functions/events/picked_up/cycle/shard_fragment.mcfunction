# Give a tracked shard_fragment
give @s minecraft:amethyst_shard{tracked: 1b,  CustomModelData: 1, display: {Name: '{"color":"#3AB3DA", "text":"❄☠ Frozen Shard Fragment ☠❄"}'}} 1

# track a shard_fragment pick up

scoreboard players add @s do2.lifetime.pickedup.shard_fragments 1
scoreboard players add @s do2.run.items.shard_fragments 1
scoreboard players add $dungeon do2.run.items.shard_fragments 1
scoreboard players add $dungeon do2.lifetime.pickedup.shard_fragments 1

#track we gave a shard_fragment to the players
scoreboard players remove @s do2.utility.shard_fragmentsToGive 1

# If player doesn't have any more shard_fragment left to give
# revoke the advancement that called it.
execute if score @s do2.utility.shard_fragmentsToGive matches ..0 run advancement revoke @s only do2:utility/picked_up/shard_fragment

# If we still have to give more shard_fragment. Cycle it again.
execute if score @s do2.utility.shard_fragmentsToGive matches 1.. run function do2:events/picked_up/cycle/shard_fragment
