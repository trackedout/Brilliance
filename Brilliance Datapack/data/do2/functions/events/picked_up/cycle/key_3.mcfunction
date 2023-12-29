# Give a tracked level_3_key
give @s minecraft:iron_nugget{tracked: 1b, CustomRoleplayData: 1b, CustomModelData: 203, display: {Name: '{"text":"❄☠ The Black Mines Key ☠❄"}'}} 1

# track a level_3_key pick up
scoreboard players add @s do2.run.items.key_3 1

#track we gave a level_3_key to the players
scoreboard players remove @s do2.utility.key_3ToGive 1

# If player doesn't have any more level_3_keys left to give
# revoke the advancement that called it.
execute if score @s do2.utility.key_3ToGive matches ..0 run advancement revoke @s only do2:utility/picked_up/key_3

# If we still have to give more level_3_keys. Cycle it again.
execute if score @s do2.utility.key_3ToGive matches 1.. run function do2:events/picked_up/cycle/key_3