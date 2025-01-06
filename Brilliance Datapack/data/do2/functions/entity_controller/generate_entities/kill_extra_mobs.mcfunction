# - Start Log -
execute as @a[scores={do2.logs.entity_controller=1..}] run tellraw @s ["",{"text":"[§9B§r]: Killing extra [§aEC§r] mobs."}]
# - End Log -
execute unless entity @e[tag=already_generated_mob] run return 0

scoreboard players set $dungeon do2.utility.ec.oldMobsExisting 0
execute as @e[tag=already_generated_mob] run scoreboard players add $dungeon do2.utility.ec.oldMobsExisting 1
# Kill 1 and loop if oldMobCount > desiredMobCount
execute if score $dungeon do2.utility.ec.oldMobsExisting <= $dungeon do2.utility.ec.mobGenerationCount run return 0
tag @e[tag=already_generated_mob,sort=random,limit=1] add will_kill
execute as @e[tag=will_kill] at @s run kill @e[type=minecart,distance=..1]
kill @e[tag=will_kill]
function do2:entity_controller/generate_entities/kill_extra_mobs
