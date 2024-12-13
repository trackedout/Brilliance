# TODO: Currently only counts ravagers in their ZONE, not across the entire level. Need to fix, and exclude special mobs in the count.
# Count Ravagers
scoreboard objectives add do2.tests.amountOfRavagers dummy
execute store result score $dungeon do2.tests.amountOfRavagers run data get storage do2:mobs mobNames

# Humans count from 1, computers count from 0. Add a fix.
scoreboard players add $dungeon do2.tests.amountOfRavagers 1

# Summon a text_display entity, to convert data into raw text, to store the raw text as a mob name.
summon minecraft:text_display -508 123 1956 {Tags:["ConvertToTextHelper"],text:'[{"text":"Ravager: #"},{"score":{"name":"$dungeon","objective":"do2.tests.amountOfRavagers"}}]'}
data modify storage do2:mobs mobNames append from entity @e[type=minecraft:text_display,tag=ConvertToTextHelper,limit=1] text
scoreboard players add $dungeon do2.utility.mc.mobNamesCount 1

# Cleanup
kill @e[type=minecraft:text_display,tag=ConvertToTextHelper]
scoreboard objectives remove do2.tests.amountOfRavagers
scoreboard players remove $dungeon do2.tests.amountOfRavagers 1

# If there STILL isn't enough mobNames for the amount of names needed, loop this function.
execute if score $dungeon do2.utility.mc.mobNamesCount < $l1z1 do2.config.mc.levelZoneMobCount run function do2:mob_controller/add_mob_names/add_numbered_ravager_name
