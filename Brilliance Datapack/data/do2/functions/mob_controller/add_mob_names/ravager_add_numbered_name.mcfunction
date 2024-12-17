# Count Ravagers
scoreboard objectives add do2.tests.amountOfRavagers dummy
scoreboard players set $dungeon do2.tests.amountOfRavagers 0

# Count number of ravagers already calculated.
execute store result score $dungeon do2.tests.amountOfRavagers run data get storage do2:mobs mobNames

# Add number of ravagers existing.
execute as @e[type=ravager,tag=!L0DEATHROOM,tag=!L0Z1] run scoreboard players add $dungeon do2.tests.amountOfRavagers 1

# Add 1 since this will be ravager # 1+number_of_previous_ravagers
scoreboard players add $dungeon do2.tests.amountOfRavagers 1

# Summon a text_display entity, to convert data into raw text, to store the raw text as a mob name.
summon minecraft:text_display -508 123 1956 {Tags:["ConvertToTextHelper"],text:'[{"text":"Ravager: #"},{"score":{"name":"$dungeon","objective":"do2.tests.amountOfRavagers"}}]'}
data modify storage do2:mobs mobNames append from entity @e[type=minecraft:text_display,tag=ConvertToTextHelper,limit=1] text
scoreboard players add $dungeon do2.utility.mc.mobNamesCount 1

# Cleanup
kill @e[type=minecraft:text_display,tag=ConvertToTextHelper]
scoreboard objectives remove do2.tests.amountOfRavagers

# If there STILL isn't enough mobNames for the amount of names needed, loop this function.
execute if score $dungeon do2.utility.mc.mobNamesCount < $dungeon do2.utility.mc.mobGenerationCount run function do2:mob_controller/add_mob_names/ravager_add_numbered_name
