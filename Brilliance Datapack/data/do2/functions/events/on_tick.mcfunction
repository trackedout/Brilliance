# Attempt to
scoreboard players add $dungeon do2.utility.currentTick 1
execute if score $dungeon do2.utility.currentTick = $dungeon do2.config.tickRate run function do2:events/on_datapack_tick


# this needs to be ran frequently, OR when ever the hidden triggers, it calls a function to auto grant the visible one.
execute as @a run function do2:advancements/grant_visible/all

# track ticks/seconds in the dungeon. Also handles if dungeon is empty.
execute if score $dungeon do2.run.active matches 1 run function do2:dungeon_timer


# For every UNTRACKED item, (item entities not tagged)
# Mark the item as UNTRACKED
execute as @e[type=item,tag=!tracked] run function do2:as_item_entity
