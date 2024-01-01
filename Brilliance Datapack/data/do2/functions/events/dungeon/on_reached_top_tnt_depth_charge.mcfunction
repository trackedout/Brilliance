# Track a success
execute if score @s do2.utility.reachedBottomDepthCharge matches 1 run scoreboard players add @s do2.utility.depth_charge_success 1
execute if score @s do2.utility.reachedBottomDepthCharge matches 1 run scoreboard players set @s do2.utility.do2.run.tnt_dive 1
# Set reachedBottomDepthCharge to "2" so no more depth charges can be acquired this run.
execute if score @s do2.utility.reachedBottomDepthCharge matches 1 run scoreboard players set @s do2.utility.reachedBottomDepthCharge 2

advancement revoke @s only do2:utility/reach_bottom_tnt_depth_charge

execute if entity @s[advancements={do2:hidden/adventuring/survive_tnt_dive=false}] run advancement grant @s only do2:hidden/adventuring/survive_tnt_dive
