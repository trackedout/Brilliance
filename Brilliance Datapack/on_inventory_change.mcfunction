# check for items picked up.
execute as @a[tag=do2.running] run function do2:count_items
advancement revoke @a only do2:utility/inventory_change