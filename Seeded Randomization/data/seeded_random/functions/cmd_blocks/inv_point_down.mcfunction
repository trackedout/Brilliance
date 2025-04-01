function seeded_randomrandom/read_inventory
function seeded_randomrandom/gen_random_number

execute if score $seed seeded_random.maxValue matches -1 run return 0

execute store result score $seed seeded_random.utility positioned ~ ~-1 ~ run function seeded_randominv_actions/determine_if_error
execute if score $seed seeded_random.utility matches 0 run return 0

# Determine the action.
execute if block ~ ~-1 ~ minecraft:dispenser run function seeded_randominv_actions/transfer_down
execute if block ~ ~-1 ~ minecraft:dropper run function seeded_randominv_actions/transfer_down
execute if block ~ ~-1 ~ minecraft:chest run function seeded_randominv_actions/transfer_down
execute if block ~ ~-1 ~ minecraft:hopper run function seeded_randominv_actions/transfer_down
execute if block ~ ~-1 ~ minecraft:barrel run function seeded_randominv_actions/transfer_down

execute if block ~ ~-1 ~ minecraft:air run function seeded_randominv_actions/spit_down
execute if block ~ ~-1 ~ minecraft:water run function seeded_randominv_actions/spit_down

