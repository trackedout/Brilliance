# - Start Log -
execute as @a[scores={do2.logs.entity_controller=1..}] run tellraw @s ["",{"text":"[§9B§r]: Adding a numbered name."}]
# - End Log -

# Count Mobs
scoreboard objectives add do2.tests.amountOfMobs dummy
scoreboard players set $dungeon do2.tests.amountOfMobs 0

# Count number of mobs already calculated.
execute store result score $dungeon do2.tests.amountOfMobs run data get storage do2:mobs mobNames

# Add number of mobs existing.
# TODO: since mobs aren't garunteed to die when regenerating. Better have unique scores that are increased upon a mob finished updating.
execute if score $dungeon do2.utility.ec.mobGenerationType matches 1 as @e[type=ravager,tag=!L0DEATHROOM,tag=!L0Z1] run scoreboard players add $dungeon do2.tests.amountOfMobs 1
execute if score $dungeon do2.utility.ec.mobGenerationType matches 2 as @e[type=warden] run scoreboard players add $dungeon do2.tests.amountOfMobs 1
execute if score $dungeon do2.utility.ec.mobGenerationType matches 3 as @e[type=drowned,tag=!L0Z2] run scoreboard players add $dungeon do2.tests.amountOfMobs 1
execute if score $dungeon do2.utility.ec.mobGenerationType matches 4 as @e[type=endermite] run scoreboard players add $dungeon do2.tests.amountOfMobs 1
execute if score $dungeon do2.utility.ec.mobGenerationType matches 5 as @e[type=stray] run scoreboard players add $dungeon do2.tests.amountOfMobs 1

# Add 1 since this will be mob # 1+number_of_previous_mobs
scoreboard players add $dungeon do2.tests.amountOfMobs 1

# Summon a text_display entity, to convert data into raw text, to store the raw text as a mob name.
execute if score $dungeon do2.utility.ec.mobGenerationType matches 1 run summon minecraft:text_display -508 123 1956 {Tags:["ConvertToTextHelper"],text:'[{"text":"Ravager: #"},{"score":{"name":"$dungeon","objective":"do2.tests.amountOfMobs"}}]'}
execute if score $dungeon do2.utility.ec.mobGenerationType matches 2 run summon minecraft:text_display -508 123 1956 {Tags:["ConvertToTextHelper"],text:'[{"text":"Warden: #"},{"score":{"name":"$dungeon","objective":"do2.tests.amountOfMobs"}}]'}
execute if score $dungeon do2.utility.ec.mobGenerationType matches 3 run summon minecraft:text_display -508 123 1956 {Tags:["ConvertToTextHelper"],text:'[{"text":"Drowned: #"},{"score":{"name":"$dungeon","objective":"do2.tests.amountOfMobs"}}]'}
execute if score $dungeon do2.utility.ec.mobGenerationType matches 4 run summon minecraft:text_display -508 123 1956 {Tags:["ConvertToTextHelper"],text:'[{"text":"Endermite: #"},{"score":{"name":"$dungeon","objective":"do2.tests.amountOfMobs"}}]'}
execute if score $dungeon do2.utility.ec.mobGenerationType matches 5 run summon minecraft:text_display -508 123 1956 {Tags:["ConvertToTextHelper"],text:'[{"text":"Stray: #"},{"score":{"name":"$dungeon","objective":"do2.tests.amountOfMobs"}}]'}
execute unless score $dungeon do2.utility.ec.mobGenerationType matches 1..5 run summon minecraft:text_display -508 123 1956 {Tags:["ConvertToTextHelper"],text:'[{"text":"Mob: #"},{"score":{"name":"$dungeon","objective":"do2.tests.amountOfMobs"}}]'}
data modify storage do2:mobs mobNames append from entity @e[type=minecraft:text_display,tag=ConvertToTextHelper,limit=1] text
scoreboard players add $dungeon do2.utility.ec.mobNamesCount 1

# Cleanup
kill @e[type=minecraft:text_display,tag=ConvertToTextHelper]
scoreboard objectives remove do2.tests.amountOfMobs

# If there STILL isn't enough mobNames for the amount of names needed, loop this function.
execute if score $dungeon do2.utility.ec.mobNamesCount < $dungeon do2.utility.ec.mobGenerationCount run function do2:entity_controller/config_interface/add_mob_names/add_numbered_name
