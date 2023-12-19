# Give a tracked rusty_kit
give @s minecraft:iron_ingot{tracked:1b,CustomModelData:2} 1

# track a rusty_kit pick up
scoreboard players add @s do2.run.items.kits 1

#track we gave a rusty_kit to the players
scoreboard players remove @s do2.utility.kitsToGive 1

# If player doesn't have any more rusty_kits left to give
# revoke the advancement that called it.
execute if score @s do2.utility.kitsToGive matches ..0 run advancement revoke @s only do2:utility/picked_up/rusty_kits

# If we still have to give more rusty_kits. Cycle it again.
execute if score @s do2.utility.kitsToGive matches 1.. run function do2:events/picked_up/cycle/rusty_kits
