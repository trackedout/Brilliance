scoreboard players add $dungeon do2.utility.currentTick 1

# Attempt to run per datapack tick.
scoreboard players operation $dungeon do2.utility.checkTick = $dungeon do2.utility.currentTick
scoreboard players operation $dungeon do2.utility.checkTick %= $dungeon do2.config.tickRate
execute if score $dungeon do2.utility.checkTick matches 0 run function do2:events/on_datapack_tick

# - Start Log -
execute as @a[scores={do2.logs.spam=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Game ticked. ("},{"score":{"name":"$dungeon","objective":"do2.utility.checkTick"},"color":"aqua"},{"text":"§r/"},{"score":{"name":"$dungeon","objective":"do2.config.tickRate"},"color":"aqua"},{"text":"§r)"}]
# - End Log -

# track ticks/seconds in the dungeon. Also handles if dungeon is empty.
execute if score $dungeon do2.run.active matches 2 run function do2:utility/dungeon_timer

# For every UNTRACKED item, (item entities not tagged)
# Mark the item as UNTRACKED
execute as @e[type=item,tag=!tracked] run function do2:utility/as_item_entity
