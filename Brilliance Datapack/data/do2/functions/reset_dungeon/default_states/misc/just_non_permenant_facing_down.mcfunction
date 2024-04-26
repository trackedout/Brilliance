# REMOVE ALL ITEMS INSIDE:
setblock ~ ~ ~ minecraft:dropper[facing=down]{Items:[]}

# Insert items. (ordered by slot)
data modify block ~ ~ ~ Items append from block ~ ~7 ~-6 Items[Slot:{0b}]
data modify block ~ ~ ~ Items[{Slot:0b}].Count set value 64b
item replace block ~ ~ ~ container.1 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.2 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.4 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.5 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.6 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.7 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.8 from block ~ ~ ~ container.0