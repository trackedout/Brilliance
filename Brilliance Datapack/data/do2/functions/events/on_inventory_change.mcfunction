# check for items picked up.
execute as @s[tag=do2.running] run function do2:count_items
advancement revoke @s only do2:utility/inventory_change
