# do2:utility array = FULL ARRAY
# do2:tests newArray = NEW ARRAY
# $dungeon do2.utility.arrayIndex = TARGET INDEX
# After completion, newArray will equal array minus the value at TARGET INDEX



# ---- Have we reached the spliced index?

# --- FALSE:
# copy array[0] into newArray
execute if score $dungeon do2.utility.arrayIndex matches 1.. run data modify storage do2:tests newArray append from storage do2:utility array[0]
# remove array[0]
execute if score $dungeon do2.utility.arrayIndex matches 1.. run data remove storage do2:utility array[0]
execute if score $dungeon do2.utility.arrayIndex matches 1.. run scoreboard players remove $dungeon do2.utility.arrayIndex 1
execute if score $dungeon do2.utility.arrayIndex matches 1.. run function do2:utility/array_manipulation/splice_from_index

# --- TRUE:
# remove array[0]
execute if score $dungeon do2.utility.arrayIndex matches ..0 run data remove storage do2:utility array[0]
# append rest of array into newArray
execute if score $dungeon do2.utility.arrayIndex matches ..0 run function do2:utility/array_manipulation/splice_from_index_helper
# exit loop
execute if score $dungeon do2.utility.arrayIndex matches ..0 run return 0
