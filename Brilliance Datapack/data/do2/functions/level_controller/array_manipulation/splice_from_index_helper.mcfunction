# append rest of array into newArray
execute unless data storage do2:tests array[0] run return 0
data modify storage do2:tests newArray append from storage do2:tests array[0]
data remove storage do2:tests array[0]
function do2:level_controller/array_manipulation/splice_from_index_helper
