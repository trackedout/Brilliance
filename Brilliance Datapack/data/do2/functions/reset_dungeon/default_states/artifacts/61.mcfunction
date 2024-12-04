# REMOVE ALL ITEMS INSIDE:
setblock ~ ~ ~ minecraft:dropper[facing=up]{Items:[]}

# Insert items. (ordered by slot)
data modify block ~ ~ ~ Items append value {id:"minecraft:clock",tag:{CustomModelData:1,display:{Lore:['{"text":"Perfect sleeping every time."}'],Name:'{"bold":true,"color":"gold","text":"Pocket Watch of Shreeping (36)"}'},tracked:0b},Slot:0b,Count:64b}
data modify block ~ ~ ~ Items append value {id:"minecraft:clock",tag:{CustomModelData:1,display:{Lore:['{"text":"Perfect sleeping every time."}'],Name:'{"bold":true,"color":"gold","text":"Pocket Watch of Shreeping (36)"}'},tracked:0b},Slot:1b,Count:64b}
data modify block ~ ~ ~ Items append value {id:"minecraft:iron_nugget",tag:{CustomModelData:16,display:{Lore:['{"text":"This gem truly is great."}'],Name:'{"bold":true,"color":"gold","text":"Gem of Greatness (40)"}'},tracked:0b},Slot:2b,Count:64b}
data modify block ~ ~ ~ Items append value {id:"minecraft:iron_nugget",tag:{CustomModelData:39,display:{Lore:['{"text":"Worn down through years of use,"}','{"text":"this artifact will never be forgotten."}'],Name:'{"bold":true,"color":"gold","text":"An Old Friend\'s Pickaxe (38)"}'},tracked:0b},Slot:3b,Count:64b}
data modify block ~ ~ ~ Items append value {id:"minecraft:iron_nugget",tag:{CustomModelData:14,display:{Lore:['{"text":"The one that started it all. Accept no substitutes"}'],Name:'{"bold":true,"color":"gold","text":"The Slab (50)"}'},tracked:0b},Slot:4b,Count:64b}
