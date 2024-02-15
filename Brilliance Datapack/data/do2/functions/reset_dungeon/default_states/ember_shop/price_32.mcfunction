# REMOVE ALL ITEMS INSIDE:
setblock ~ ~ ~ minecraft:hopper[facing=east,enabled=false]{Items:[]}

# Insert items. (ordered by slot)
data modify block ~ ~ ~ Items append value {Slot: 0b, Count:66b, id: "minecraft:iron_nugget"}
