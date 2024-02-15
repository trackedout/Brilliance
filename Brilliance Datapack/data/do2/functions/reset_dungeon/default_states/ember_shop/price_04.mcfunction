# REMOVE ALL ITEMS INSIDE:
setblock ~ ~ ~ minecraft:hopper[facing=west,enabled=false]{Items:[]}

# Insert items. (ordered by slot)
data modify block ~ ~ ~ Items append value {Slot: 0b, Count:9b, id: "minecraft:iron_nugget"}
