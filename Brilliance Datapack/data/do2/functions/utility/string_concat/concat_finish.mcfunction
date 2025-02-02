data modify storage do2:utility concat_error set from block -519 123 1949 LastOutput
data modify storage do2:utility concat_result set string storage do2:utility concat_error 91 -38

kill @e[type=armor_stand,tag=string_concat_helper]
setblock -519 123 1949 minecraft:purple_stained_glass
