# Track a success IF reached bottom first.
execute unless score @s do2.utility.reachedBottomDepthCharge matches 1 run return 0

# - Start Log -
tag @s add topTnTLogTarget
execute as @a[scores={do2.logs.player_actions=3..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=topTnTLogTarget]"},{"text":" survived the TnT depth charge."}]
tag @s remove topTnTLogTarget
# - End Log -

scoreboard players set @s do2.run.depth_charge_success 1
scoreboard players add @s do2.depth_charge_success 1
scoreboard players set $dungeon do2.run.depth_charge_success 1
scoreboard players add $dungeon do2.depth_charge_success 1
execute if entity @s[advancements={do2:hidden/adventuring/survive_tnt_dive=false}] run advancement grant @s only do2:hidden/adventuring/survive_tnt_dive
# Set reachedBottomDepthCharge to "2" so no more depth charges can be acquired this run.
scoreboard players set @s do2.utility.reachedBottomDepthCharge 2

