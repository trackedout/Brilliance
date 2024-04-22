scoreboard players add $dungeon do2.utility.currentTick 1

# Attempt to run per datapack tick.
scoreboard players operation $dungeon do2.utility.checkTick = $dungeon do2.utility.currentTick
scoreboard players operation $dungeon do2.utility.checkTick %= $dungeon do2.config.tickRate
execute if score $dungeon do2.utility.checkTick matches 0 run function do2:events/on_datapack_tick

# - Start Log -
execute as @a[scores={do2.logs.spam=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Game ticked. ("},{"score":{"name":"$dungeon","objective":"do2.utility.checkTick"},"color":"aqua"},{"text":"§r/"},{"score":{"name":"$dungeon","objective":"do2.config.tickRate"},"color":"aqua"},{"text":"§r)"}]
# - End Log -

# Attempt to run per second event.
scoreboard players operation $dungeon do2.utility.checkTick = $dungeon do2.utility.currentTick
scoreboard players operation $dungeon do2.utility.checkTick %= $dungeon do2.config.ticksPerSecond
execute if score $dungeon do2.utility.checkTick matches 0 run function do2:events/on_20_ticks
# if score is way too high, reset it to zero. (better so math doesn't take long)
execute if score $dungeon do2.utility.currentTick matches 10000000.. run scoreboard players set $dungeon do2.utility.currentTick 0

# Grant the player their visible advancements to match their actual advancements.
# But only if the advancement isn't being ordering.
execute as @a if score @s do2.utility.advancementOrdering matches 0 run function do2:advancements/grant_visible/all

# track ticks/seconds in the dungeon. Also handles if dungeon is empty.
execute if score $dungeon do2.run.active matches 1 run function do2:dungeon_timer


# For every UNTRACKED item, (item entities not tagged)
# Mark the item as UNTRACKED
execute as @e[type=item,tag=!tracked] run function do2:as_item_entity

# Display GUI
function do2:gui/display
