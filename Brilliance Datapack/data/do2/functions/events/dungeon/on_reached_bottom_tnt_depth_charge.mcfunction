# - Start Log -
tag @s add bottomTnTLogTarget
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=bottomTnTLogTarget]"},{"text":" reached bottom of TnT depth charge."}]
tag @s remove bottomTnTLogTarget
# - End Log -

execute if score @s do2.utility.reachedBottomDepthCharge matches 0 run scoreboard players set @s do2.utility.reachedBottomDepthCharge 1

# No reason to revoke the player's REACH BOTTOM since it's a one time event
#advancement revoke @s only do2:utility/reach_bottom_tnt_depth_charge
# Revoke the reach TOP, so when player goes BACK, the advancement can go again.
advancement revoke @s only do2:utility/reach_top_tnt_depth_charge
