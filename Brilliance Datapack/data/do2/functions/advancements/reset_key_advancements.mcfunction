# Eat glow berries, (reset all criteria so no partial progress)
execute as @s[advancements={do2:hidden/adventuring/compost_glowberries=false}] run advancement revoke @s only do2:hidden/adventuring/compost_glowberries
execute as @s[advancements={do2:hidden/adventuring/compost_glowberries=false}] run advancement revoke @s only do2:visible/adventuring/compost_glowberries


# full course meal (reset all criteria so no partial progress)
scoreboard players set @s do2.run.fullcoursemeal 0
execute as @s[advancements={do2:hidden/adventuring/eat_unique_items=false}] run advancement revoke @s only do2:hidden/adventuring/eat_unique_items
execute as @s[advancements={do2:hidden/adventuring/eat_unique_items=false}] run advancement revoke @s only do2:visible/adventuring/eat_unique_items
advancement revoke @s only do2:visible/adventuring/eat_unique_items
advancement revoke @s only do2:utility/eat_unique_items/cod
advancement revoke @s only do2:utility/eat_unique_items/cooked_cod
advancement revoke @s only do2:utility/eat_unique_items/cooked_porkchops
advancement revoke @s only do2:utility/eat_unique_items/cooked_salmon
advancement revoke @s only do2:utility/eat_unique_items/pufferfish
advancement revoke @s only do2:utility/eat_unique_items/salmon
advancement revoke @s only do2:utility/eat_unique_items/spider_eye
advancement revoke @s only do2:utility/eat_unique_items/sweet_berries
advancement revoke @s only do2:utility/eat_unique_items/glow_berries
advancement revoke @s only do2:utility/eat_unique_items/tropical_fish
