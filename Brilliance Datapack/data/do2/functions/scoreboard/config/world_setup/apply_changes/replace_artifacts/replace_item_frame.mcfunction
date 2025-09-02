# NOTE: to save time i've gone ahead and assumed ALL item frames are artifakes and none are artifacts.

# Determine which artifake it is.
execute store result score @s do2.utility.modelDataTarget run data get entity @s Item.tag.CustomModelData


# Iskall's Bionic Eye of Doom === Torchy
execute if score $dungeon do2.config.wc.replaceRetiredHermits matches 1 if score @s do2.utility.modelDataTarget matches 20 run data modify entity @s Item.tag.display set value {Lore: ['{"text":"No longer is this just a figment."}','{"text":"An enchanted torch has now evolved beyond its life of secrecy."}'], Name: '{"bold":true,"color":"gold","text":"Completed Torchy"}'}
execute if score $dungeon do2.config.wc.replaceRetiredHermits matches 1 if score @s do2.utility.modelDataTarget matches 20 run data modify entity @s Item.tag.CustomModelData set value 45
execute if score $dungeon do2.config.wc.replaceRetiredHermits matches 0 if score @s do2.utility.modelDataTarget matches 45 run data modify entity @s Item.tag.display set value {Lore: ['{"text":"Also Omega. Probably Mega as well."}'], Name: '{"bold":true,"color":"gold","text":"Bionic Eye of Doom"}'}
execute if score $dungeon do2.config.wc.replaceRetiredHermits matches 0 if score @s do2.utility.modelDataTarget matches 45 run data modify entity @s Item.tag.CustomModelData set value 20
# Stressmonster's Wand of Gorgeousness === Hattificator #26
execute if score $dungeon do2.config.wc.replaceRetiredHermits matches 1 if score @s do2.utility.modelDataTarget matches 35 run data modify entity @s Item.tag.display set value {Lore: ['{"text":"Hand knitted with care, this headpiece empowers the wearer with style, confidence, and +2 Charisma."}','{"text":"Prerequisites: Must have a shaven noggin."}'], Name: '{"bold":true,"color":"gold","text":"Hattificator #26"}'}
execute if score $dungeon do2.config.wc.replaceRetiredHermits matches 1 if score @s do2.utility.modelDataTarget matches 35 run data modify entity @s Item.tag.CustomModelData set value 46
execute if score $dungeon do2.config.wc.replaceRetiredHermits matches 0 if score @s do2.utility.modelDataTarget matches 46 run data modify entity @s Item.tag.display set value {Lore: ['{"text":"Makes everything gorgeous.  Of course."}'], Name: '{"bold":true,"color":"gold","text":"Wand of Gorgeousness"}'}
execute if score $dungeon do2.config.wc.replaceRetiredHermits matches 0 if score @s do2.utility.modelDataTarget matches 46 run data modify entity @s Item.tag.CustomModelData set value 35
