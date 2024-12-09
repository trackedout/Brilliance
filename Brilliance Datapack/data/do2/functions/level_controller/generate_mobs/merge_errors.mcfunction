execute unless data storage do2:mobs mergedErrors[1] run return 0

# Idea, place a sign down, copy the text over, then copy that text into a entity, and then finally save the text from the entity
# Summon a text_display entity, to convert data into raw text, to store the raw text as a mob name.

# TODO: does not work.
summon minecraft:text_display -508 123 1956 {Tags:["MergeTextHelper"],text:'[{"storage": "do2:mobs","nbt": "mergedErrors[0]"},{"text":"\\n"},{"storage": "do2:mobs","nbt": "mergedErrors[1]"}]'}
data remove storage do2:mobs mergedErrors[1]
data remove storage do2:mobs mergedErrors[0]
data modify storage do2:mobs mergedErrors prepend from

kill @e[type=minecraft:text_display,tag=MergeTextHelper]

function do2:level_controller/generate_mobs/merge_errors
