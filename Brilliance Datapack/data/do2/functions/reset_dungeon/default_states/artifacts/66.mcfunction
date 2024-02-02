# REMOVE ALL ITEMS INSIDE:
setblock ~ ~ ~ minecraft:dropper[facing=up]{Items:[]}

# Insert items. (ordered by slot)
data modify block ~ ~ ~ Items append value {id:"minecraft:iron_nugget",tag:{CustomModelData:16,display:{Lore:['{"text":"This gem truly is great."}'],Name:'{"bold":true,"color":"gold","text":"Gem of Greatness (40)"}'},tracked:0b},Slot:0b,Count:64b}
data modify block ~ ~ ~ Items append value {id:"minecraft:iron_nugget",tag:{CustomModelData:16,display:{Lore:['{"text":"This gem truly is great."}'],Name:'{"bold":true,"color":"gold","text":"Gem of Greatness (40)"}'},tracked:0b},Slot:1b,Count:64b}
data modify block ~ ~ ~ Items append value {id:"minecraft:iron_nugget",tag:{CustomModelData:11,display:{Lore:['{"text":"Let\'s GO!"}'],Name:'{"bold":true,"color":"gold","text":"CF-135 (46)"}'},tracked:0b},Slot:2b,Count:64b}
data modify block ~ ~ ~ Items append value {id:"minecraft:iron_nugget",tag:{CustomModelData:44,display:{Lore:['{"text":"Honestly... Nobody really knows"}','{"text":"what this thing does."}'],Name:'{"bold":true,"color":"gold","text":"Staff of the Pink Shepherd (48)"}'},tracked:0b},Slot:3b,Count:64b}
data modify block ~ ~ ~ Items append value {id:"minecraft:iron_nugget",tag:{CustomModelData:36,display:{Lore:['{"text":"Drinking from this enlarged chalice is said to"}','{"text":"cause confusion, stuttering, and"}','{"text":"loss of perception. "}'],Name:'{"bold":true,"color":"gold","text":"Mug of the Dungeon Master (54)"}'},tracked:0b},Slot:4b,Count:64b}
