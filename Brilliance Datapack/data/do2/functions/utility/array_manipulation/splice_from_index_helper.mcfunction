# append rest of array into newArray
execute unless data storage do2:utility array[0] run return 0
data modify storage do2:tests newArray append from storage do2:utility array[0]
data remove storage do2:utility array[0]
function do2:utility/array_manipulation/splice_from_index_helper
