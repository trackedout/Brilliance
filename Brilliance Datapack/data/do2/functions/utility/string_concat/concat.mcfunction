# String concat explained
# It's the dumbest thing ever that I had to do since we're stuck in 1.20.1

# 1. Set special JSON string onto a single line in a sign
# 2. Summon an armor stand.
# 3. Have the armor stand take it's name FROM the single line on the sign.
# 4. Attempt to enchant the empty armor stand.
# 4.A this will create an ERROR as armor stands can't be enchanted w/o items.
# 4.B capture this error by running this in a command block.
# 5. Substring error message to ONLY contain the target's name.
# 6. Cleanup and remainder is the concat string.

setblock -519 122 1949 minecraft:oak_sign
data merge block -519 122 1949 {is_waxed:1b, front_text:{messages:['{"text":"concat str helper","color":"black"}','[{"storage":"do2:utility","nbt":"concat_string_A"},{"storage":"do2:utility","nbt":"concat_string_B"}]','{"text":""}','{"text":""}']}}
summon armor_stand -519 122 1949 {Tags:["string_concat_helper"]}
data modify entity @e[type=armor_stand,tag=string_concat_helper,limit=1] CustomName set from block -519 122 1949 front_text.messages[1]
setblock -519 123 1949 minecraft:command_block{Command:"/enchant @e[type=armor_stand,tag=string_concat_helper,limit=1] minecraft:aqua_affinity 1",auto:1b}
schedule function do2:utility/string_concat/concat_finish 1t
