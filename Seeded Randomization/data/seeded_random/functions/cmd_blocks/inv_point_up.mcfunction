say "inv_point_up"
execute positioned ~ ~ ~ in seeded_random:seeded_random run forceload add ~ ~
execute in seeded_random:seeded_random run function seeded_random:utility/read_inventory
execute positioned ~ ~ ~ in seeded_random:seeded_random run forceload remove ~ ~
function seeded_random:utility/gen_random_number

execute if score $seed seeded_random.maxValue matches 0 run return 0

execute store result score $seed seeded_random.utility positioned ~ ~1 ~ run function seeded_random:inv_actions/determine_if_error
execute if score $seed seeded_random.utility matches 0 run return 0

# Determine the action.
execute if block ~ ~1 ~ minecraft:dispenser run function seeded_random:inv_actions/transfer_up
execute if block ~ ~1 ~ minecraft:dropper run function seeded_random:inv_actions/transfer_up
execute if block ~ ~1 ~ minecraft:chest run function seeded_random:inv_actions/transfer_up
execute if block ~ ~1 ~ minecraft:hopper run function seeded_random:inv_actions/transfer_up
execute if block ~ ~1 ~ minecraft:barrel run function seeded_random:inv_actions/transfer_up

execute if block ~ ~1 ~ minecraft:air run function seeded_random:inv_actions/spit_up
execute if block ~ ~1 ~ minecraft:water run function seeded_random:inv_actions/spit_up


