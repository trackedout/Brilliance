# - Start Log -
tag @s add bottomTnTLogTarget
execute as @a[scores={do2.logs.player_actions=3..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=bottomTnTLogTarget]"},{"text":" reached bottom of TnT depth charge."}]
tag @s remove bottomTnTLogTarget
# - End Log -

# Only 5 possible items, make sure all 5 are set to tracked:0b
data modify block -580 15 1969 Items[0].tag merge value {tracked:0b}
data modify block -580 15 1969 Items[1].tag merge value {tracked:0b}
data modify block -580 15 1969 Items[2].tag merge value {tracked:0b}
data modify block -580 15 1969 Items[3].tag merge value {tracked:0b}
data modify block -580 15 1969 Items[4].tag merge value {tracked:0b}

execute if score @s do2.utility.reachedBottomDepthCharge matches 0 run scoreboard players set @s do2.utility.reachedBottomDepthCharge 1

# No reason to revoke the player's REACH BOTTOM since it's a one time event
#advancement revoke @s only do2:utility/reach_bottom_tnt_depth_charge
# Revoke the reach TOP, so when player goes BACK, the advancement can go again.
advancement revoke @s only do2:utility/reach_top_tnt_depth_charge

# Agronet event
function do2:external/agronet/logs/player_actions/on_reached_bottom_tnt_depth_charge