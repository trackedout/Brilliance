scoreboard players add $dungeon do2.utility.currentTick 1

# - Start Log -
execute as @a[scores={do2.utility.logLevel=3..}] run tellraw @s ["",{"text":"[§9B§r]: Game ticked. ("},{"score":{"name":"$dungeon","objective":"do2.utility.currentTick"},"color":"aqua"},{"text":"§r/"},{"score":{"name":"$dungeon","objective":"do2.config.tickRate"},"color":"aqua"},{"text":"§r)"}]
# - End Log -

# Attempt to run a datapack tick
execute if score $dungeon do2.utility.currentTick = $dungeon do2.config.tickRate run function do2:events/on_datapack_tick


# Grant the player their visible advancements to match their actual advancements.
# But only if the advancement isn't being ordering.
execute as @a if score @s do2.utility.advancementOrdering matches 0 run function do2:advancements/grant_visible/all

# track ticks/seconds in the dungeon. Also handles if dungeon is empty.
execute if score $dungeon do2.run.active matches 1 run function do2:dungeon_timer


# For every UNTRACKED item, (item entities not tagged)
# Mark the item as UNTRACKED
execute as @e[type=item,tag=!tracked] run function do2:as_item_entity
