function seeds:random/read_inventory
function seeds:random/gen_random_number

execute if score $seed seeded.random.maxValue matches -1 run return 0

execute store result score $seed seeded.utility positioned ~ ~-1 ~ run function seeds:determine_inv_actions/determine_if_error
execute if score $seed seeded.utility matches 0 run return 0

# Determine the action.
execute if block ~ ~-1 ~ minecraft:dispenser run function seeds:determine_inv_actions/transfer_down
execute if block ~ ~-1 ~ minecraft:dropper run function seeds:determine_inv_actions/transfer_down
execute if block ~ ~-1 ~ minecraft:chest run function seeds:determine_inv_actions/transfer_down
execute if block ~ ~-1 ~ minecraft:hopper run function seeds:determine_inv_actions/transfer_down
execute if block ~ ~-1 ~ minecraft:barrel run function seeds:determine_inv_actions/transfer_down

execute if block ~ ~-1 ~ minecraft:air run function seeds:determine_inv_actions/spit_down
execute if block ~ ~-1 ~ minecraft:water run function seeds:determine_inv_actions/spit_down

