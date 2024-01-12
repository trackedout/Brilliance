# - Start Log -
tag @s add topTnTLogTarget
execute if score @s do2.utility.reachedBottomDepthCharge matches 1 as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=topTnTLogTarget]"},{"text":" survived the TnT depth charge."}]
tag @s remove topTnTLogTarget
# - End Log -
# Track a success IF reached bottom first.
execute if score @s do2.utility.reachedBottomDepthCharge matches 1 run scoreboard players add @s do2.utility.depth_charge_success 1
execute if score @s do2.utility.reachedBottomDepthCharge matches 1 run scoreboard players set @s do2.utility.do2.run.tnt_dive 1
execute if score @s do2.utility.reachedBottomDepthCharge matches 1 if entity @s[advancements={do2:hidden/adventuring/survive_tnt_dive=false}] run advancement grant @s only do2:hidden/adventuring/survive_tnt_dive
# Set reachedBottomDepthCharge to "2" so no more depth charges can be acquired this run.
execute if score @s do2.utility.reachedBottomDepthCharge matches 1 run scoreboard players set @s do2.utility.reachedBottomDepthCharge 2

