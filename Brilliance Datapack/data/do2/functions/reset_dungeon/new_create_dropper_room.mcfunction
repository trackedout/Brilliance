# - Start Log -
execute as @a[scores={do2.logs.dropper_room=1..}] run tellraw @s ["",{"text":"[§9B§r]: Creating Dropper Room."}]
# - End Log -

# - Create New Dropper Room -

# Lock Hoppers
fill -456 113 1967 -456 113 1989 redstone_block
fill -459 113 1967 -459 113 1989 redstone_block
fill -462 113 1967 -462 113 1980 redstone_block

# Difficulty Selector
setblock -475 115 1981 air replace
setblock -475 114 1981 brown_stained_glass keep
setblock -475 115 1981 oak_sign[rotation=8]{front_text:{messages:['{"text":"Difficulty","color":"#64361D"}','{"text":"Selectors","color":"#64361D"}','{"text":"","color":""}','{"text":"easy","color":"#00BBFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -557 109 1982 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1981 air replace
setblock -474 114 1981 brown_stained_glass keep
setblock -474 115 1981 oak_sign[rotation=8]{front_text:{messages:['{"text":"Difficulty","color":"#64361D"}','{"text":"Selectors","color":"#64361D"}','{"text":"","color":""}','{"text":"medium","color":"#55FF00","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -558 109 1982 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1981 air replace
setblock -473 114 1981 brown_stained_glass keep
setblock -473 115 1981 oak_sign[rotation=8]{front_text:{messages:['{"text":"Difficulty","color":"#64361D"}','{"text":"Selectors","color":"#64361D"}','{"text":"","color":""}','{"text":"hard","color":"#FF9100","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -559 109 1982 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1981 air replace
setblock -472 114 1981 brown_stained_glass keep
setblock -472 115 1981 oak_sign[rotation=8]{front_text:{messages:['{"text":"Difficulty","color":"#64361D"}','{"text":"Selectors","color":"#64361D"}','{"text":"","color":""}','{"text":"deadly","color":"#FF0000","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -560 109 1982 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1981 air replace
setblock -471 114 1981 brown_stained_glass keep
setblock -471 115 1981 oak_sign[rotation=8]{front_text:{messages:['{"text":"Difficulty","color":"#64361D"}','{"text":"Selectors","color":"#64361D"}','{"text":"","color":""}','{"text":"deepfrost","color":"#78008A","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -561 109 1982 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace

# Compasses
setblock -475 115 1984 air replace
setblock -475 114 1984 pink_stained_glass keep
setblock -475 115 1984 oak_sign[rotation=8]{front_text:{messages:['{"text":"Easy","color":"#00BBFF"}','{"text":"","color":""}','{"text":"DIFFICULTY","color":""}','{"text":"Dropper 1","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -549 106 1979 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1984 air replace
setblock -474 114 1984 pink_stained_glass keep
setblock -474 115 1984 oak_sign[rotation=8]{front_text:{messages:['{"text":"Easy","color":"#00BBFF"}','{"text":"","color":""}','{"text":"DIFFICULTY","color":""}','{"text":"Dropper 2","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -549 106 1978 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1984 air replace
setblock -473 114 1984 pink_stained_glass keep
setblock -473 115 1984 oak_sign[rotation=8]{front_text:{messages:['{"text":"Medium","color":"#55FF00"}','{"text":"","color":""}','{"text":"DIFFICULTY","color":""}','{"text":"Dropper 1","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -549 106 1977 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1984 air replace
setblock -472 114 1984 pink_stained_glass keep
setblock -472 115 1984 oak_sign[rotation=8]{front_text:{messages:['{"text":"Medium","color":"#55FF00"}','{"text":"","color":""}','{"text":"DIFFICULTY","color":""}','{"text":"Dropper 2","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -549 106 1976 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1984 air replace
setblock -471 114 1984 pink_stained_glass keep
setblock -471 115 1984 oak_sign[rotation=8]{front_text:{messages:['{"text":"Hard","color":"#FF9100"}','{"text":"","color":""}','{"text":"DIFFICULTY","color":""}','{"text":"Dropper 1","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -549 106 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1984 air replace
setblock -470 114 1984 pink_stained_glass keep
setblock -470 115 1984 oak_sign[rotation=8]{front_text:{messages:['{"text":"Hard","color":"#FF9100"}','{"text":"","color":""}','{"text":"DIFFICULTY","color":""}','{"text":"Dropper 2","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -549 106 1974 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -469 115 1984 air replace
setblock -469 114 1984 pink_stained_glass keep
setblock -469 115 1984 oak_sign[rotation=8]{front_text:{messages:['{"text":"Deadly","color":"#FF0000"}','{"text":"","color":""}','{"text":"DIFFICULTY","color":""}','{"text":"Dropper 1","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -549 106 1973 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -468 115 1984 air replace
setblock -468 114 1984 pink_stained_glass keep
setblock -468 115 1984 oak_sign[rotation=8]{front_text:{messages:['{"text":"Deadly","color":"#FF0000"}','{"text":"","color":""}','{"text":"DIFFICULTY","color":""}','{"text":"Dropper 2","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -549 106 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -467 115 1984 air replace
setblock -467 114 1984 pink_stained_glass keep
setblock -467 115 1984 oak_sign[rotation=8]{front_text:{messages:['{"text":"Deepfrost","color":"#78008A"}','{"text":"","color":""}','{"text":"DIFFICULTY","color":""}','{"text":"Dropper 1","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -549 106 1971 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -466 115 1984 air replace
setblock -466 114 1984 pink_stained_glass keep
setblock -466 115 1984 oak_sign[rotation=8]{front_text:{messages:['{"text":"Deepfrost","color":"#78008A"}','{"text":"","color":""}','{"text":"DIFFICULTY","color":""}','{"text":"Dropper 2","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -549 106 1970 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace

# Treasure
setblock -475 115 1959 air replace
setblock -475 114 1959 yellow_stained_glass keep
setblock -475 115 1959 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#01","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -518 35 2002 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -475 115 1960 air replace
setblock -475 114 1960 yellow_stained_glass keep
setblock -475 115 1960 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#02","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -521 35 1982 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -475 115 1961 air replace
setblock -475 114 1961 yellow_stained_glass keep
setblock -475 115 1961 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#03","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -497 51 1980 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -475 115 1962 air replace
setblock -475 114 1962 yellow_stained_glass keep
setblock -475 115 1962 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#04","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -484 53 1989 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -475 115 1963 air replace
setblock -475 114 1963 yellow_stained_glass keep
setblock -475 115 1963 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#05","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -514 51 1962 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -475 115 1964 air replace
setblock -475 114 1964 yellow_stained_glass keep
setblock -475 115 1964 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#06","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -527 51 1973 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -475 115 1965 air replace
setblock -475 114 1965 yellow_stained_glass keep
setblock -475 115 1965 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#07","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -546 51 2008 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -475 115 1966 air replace
setblock -475 114 1966 yellow_stained_glass keep
setblock -475 115 1966 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#08","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -516 46 2031 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -475 115 1967 air replace
setblock -475 114 1967 yellow_stained_glass keep
setblock -475 115 1967 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#09","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -561 47 1942 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -475 115 1968 air replace
setblock -475 114 1968 yellow_stained_glass keep
setblock -475 115 1968 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#10","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -536 45 1948 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1959 air replace
setblock -474 114 1959 yellow_stained_glass keep
setblock -474 115 1959 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#11","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -490 50 2017 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1960 air replace
setblock -474 114 1960 yellow_stained_glass keep
setblock -474 115 1960 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#12","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -532 44 2024 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1961 air replace
setblock -474 114 1961 yellow_stained_glass keep
setblock -474 115 1961 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#13","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -588 52 1951 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1962 air replace
setblock -474 114 1962 yellow_stained_glass keep
setblock -474 115 1962 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#14","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -590 46 1978 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1963 air replace
setblock -474 114 1963 yellow_stained_glass keep
setblock -474 115 1963 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#15","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -619 43 2027 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1964 air replace
setblock -474 114 1964 yellow_stained_glass keep
setblock -474 115 1964 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#16","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -606 43 2024 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1965 air replace
setblock -474 114 1965 yellow_stained_glass keep
setblock -474 115 1965 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#17","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -583 45 2012 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1966 air replace
setblock -474 114 1966 yellow_stained_glass keep
setblock -474 115 1966 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#18","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -559 46 2022 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1967 air replace
setblock -474 114 1967 yellow_stained_glass keep
setblock -474 115 1967 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#19","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -554 51 2007 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1968 air replace
setblock -474 114 1968 yellow_stained_glass keep
setblock -474 115 1968 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#20","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -519 53 2011 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1959 air replace
setblock -473 114 1959 yellow_stained_glass keep
setblock -473 115 1959 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#21","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -557 45 1976 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1960 air replace
setblock -473 114 1960 yellow_stained_glass keep
setblock -473 115 1960 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#22","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -563 36 1999 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1961 air replace
setblock -473 114 1961 yellow_stained_glass keep
setblock -473 115 1961 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#23","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -575 36 1998 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1962 air replace
setblock -473 114 1962 yellow_stained_glass keep
setblock -473 115 1962 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#24","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -485 31 1963 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1963 air replace
setblock -473 114 1963 yellow_stained_glass keep
setblock -473 115 1963 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#25","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -479 19 2009 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1964 air replace
setblock -473 114 1964 yellow_stained_glass keep
setblock -473 115 1964 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#26","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -594 12 1954 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1965 air replace
setblock -473 114 1965 yellow_stained_glass keep
setblock -473 115 1965 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#27","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -509 14 2034 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1966 air replace
setblock -473 114 1966 yellow_stained_glass keep
setblock -473 115 1966 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#28","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -502 16 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1967 air replace
setblock -473 114 1967 yellow_stained_glass keep
setblock -473 115 1967 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#29","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -590 11 2032 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1968 air replace
setblock -473 114 1968 yellow_stained_glass keep
setblock -473 115 1968 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#30","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -598 11 1988 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1959 air replace
setblock -472 114 1959 yellow_stained_glass keep
setblock -472 115 1959 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#31","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -574 11 2007 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1960 air replace
setblock -472 114 1960 yellow_stained_glass keep
setblock -472 115 1960 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#32","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -553 10 2036 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1961 air replace
setblock -472 114 1961 yellow_stained_glass keep
setblock -472 115 1961 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#33","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -507 9 1951 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1962 air replace
setblock -472 114 1962 yellow_stained_glass keep
setblock -472 115 1962 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#34","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -581 9 1955 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1963 air replace
setblock -472 114 1963 yellow_stained_glass keep
setblock -472 115 1963 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#35","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -568 8 1964 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1964 air replace
setblock -472 114 1964 yellow_stained_glass keep
setblock -472 115 1964 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#36","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -597 12 2009 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1965 air replace
setblock -472 114 1965 yellow_stained_glass keep
setblock -472 115 1965 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#37","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -541 11 1998 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1966 air replace
setblock -472 114 1966 yellow_stained_glass keep
setblock -472 115 1966 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#38","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -531 16 1990 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1967 air replace
setblock -472 114 1967 yellow_stained_glass keep
setblock -472 115 1967 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#39","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -548 11 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1968 air replace
setblock -472 114 1968 yellow_stained_glass keep
setblock -472 115 1968 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#40","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -531 10 2016 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1959 air replace
setblock -471 114 1959 yellow_stained_glass keep
setblock -471 115 1959 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#41","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -528 12 2031 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1960 air replace
setblock -471 114 1960 yellow_stained_glass keep
setblock -471 115 1960 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#42","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -526 12 1942 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1961 air replace
setblock -471 114 1961 yellow_stained_glass keep
setblock -471 115 1961 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#43","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -490 11 2007 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1962 air replace
setblock -471 114 1962 yellow_stained_glass keep
setblock -471 115 1962 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#44","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -496 15 2000 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1963 air replace
setblock -471 114 1963 yellow_stained_glass keep
setblock -471 115 1963 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#45","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -503 31 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1964 air replace
setblock -471 114 1964 yellow_stained_glass keep
setblock -471 115 1964 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#46","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 1 1920 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1965 air replace
setblock -471 114 1965 yellow_stained_glass keep
setblock -471 115 1965 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#47","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -652 1 1893 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1966 air replace
setblock -471 114 1966 yellow_stained_glass keep
setblock -471 115 1966 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#48","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -590 1 1901 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1967 air replace
setblock -471 114 1967 yellow_stained_glass keep
setblock -471 115 1967 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#49","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -586 1 1887 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1968 air replace
setblock -471 114 1968 yellow_stained_glass keep
setblock -471 115 1968 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#50","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -606 1 1920 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1959 air replace
setblock -470 114 1959 yellow_stained_glass keep
setblock -470 115 1959 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#51","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -628 1 1920 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1960 air replace
setblock -470 114 1960 yellow_stained_glass keep
setblock -470 115 1960 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#52","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -654 -9 1891 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1961 air replace
setblock -470 114 1961 yellow_stained_glass keep
setblock -470 115 1961 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#53","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -585 -9 1919 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1962 air replace
setblock -470 114 1962 yellow_stained_glass keep
setblock -470 115 1962 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#54","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -624 -9 1924 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1963 air replace
setblock -470 114 1963 yellow_stained_glass keep
setblock -470 115 1963 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#55","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -603 -9 1885 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1964 air replace
setblock -470 114 1964 yellow_stained_glass keep
setblock -470 115 1964 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#56","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -583 -17 1927 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1965 air replace
setblock -470 114 1965 yellow_stained_glass keep
setblock -470 115 1965 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#57","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -640 -19 1888 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1966 air replace
setblock -470 114 1966 yellow_stained_glass keep
setblock -470 115 1966 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#58","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -641 -19 1921 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1967 air replace
setblock -470 114 1967 yellow_stained_glass keep
setblock -470 115 1967 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#59","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -608 -19 1919 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1968 air replace
setblock -470 114 1968 yellow_stained_glass keep
setblock -470 115 1968 oak_sign[rotation=8]{front_text:{messages:['{"text":"Treasure","color":"#FFFF00"}','{"text":"Dropper","color":"#FFFF00"}','{"text":"","color":""}','{"text":"#60","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -577 -37 1837 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace

# Artifacts
setblock -475 115 1971 air replace
setblock -475 114 1971 purple_stained_glass keep
setblock -475 115 1971 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#01","color":"#00FFFF"}','{"text":"EASY","color":"#00BBFF"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -562 48 2033 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -475 115 1972 air replace
setblock -475 114 1972 purple_stained_glass keep
setblock -475 115 1972 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#02","color":"#00FFFF"}','{"text":"EASY","color":"#00BBFF"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -536 46 2035 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -475 115 1973 air replace
setblock -475 114 1973 purple_stained_glass keep
setblock -475 115 1973 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#03","color":"#00FFFF"}','{"text":"EASY","color":"#00BBFF"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -513 46 2030 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -475 115 1974 air replace
setblock -475 114 1974 purple_stained_glass keep
setblock -475 115 1974 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#04","color":"#00FFFF"}','{"text":"EASY","color":"#00BBFF"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -556 51 2006 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -475 115 1975 air replace
setblock -475 114 1975 purple_stained_glass keep
setblock -475 115 1975 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#05","color":"#00FFFF"}','{"text":"EASY","color":"#00BBFF"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -593 49 1967 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -475 115 1976 air replace
setblock -475 114 1976 purple_stained_glass keep
setblock -475 115 1976 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#06","color":"#00FFFF"}','{"text":"EASY","color":"#00BBFF"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -573 55 1944 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -475 115 1977 air replace
setblock -475 114 1977 purple_stained_glass keep
setblock -475 115 1977 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#07","color":"#00FFFF"}','{"text":"EASY","color":"#00BBFF"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -548 51 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -475 115 1978 air replace
setblock -475 114 1978 purple_stained_glass keep
setblock -475 115 1978 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#08","color":"#00FFFF"}','{"text":"EASY","color":"#00BBFF"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -499 44 2013 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1971 air replace
setblock -474 114 1971 purple_stained_glass keep
setblock -474 115 1971 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#09","color":"#00FFFF"}','{"text":"EASY","color":"#00BBFF"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -490 50 2020 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1972 air replace
setblock -474 114 1972 purple_stained_glass keep
setblock -474 115 1972 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#10","color":"#00FFFF"}','{"text":"EASY","color":"#00BBFF"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -546 38 1995 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1973 air replace
setblock -474 114 1973 purple_stained_glass keep
setblock -474 115 1973 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#11","color":"#00FFFF"}','{"text":"EASY","color":"#00BBFF"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -550 38 1984 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1974 air replace
setblock -474 114 1974 purple_stained_glass keep
setblock -474 115 1974 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#12","color":"#00FFFF"}','{"text":"EASY","color":"#00BBFF"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -517 35 1984 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1975 air replace
setblock -474 114 1975 purple_stained_glass keep
setblock -474 115 1975 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#13","color":"#00FFFF"}','{"text":"EASY","color":"#00BBFF"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -520 35 2000 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1976 air replace
setblock -474 114 1976 purple_stained_glass keep
setblock -474 115 1976 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#14","color":"#00FFFF"}','{"text":"EASY","color":"#00BBFF"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -552 45 1955 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1977 air replace
setblock -474 114 1977 purple_stained_glass keep
setblock -474 115 1977 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#15","color":"#00FFFF"}','{"text":"EASY","color":"#00BBFF"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -536 44 1966 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -474 115 1978 air replace
setblock -474 114 1978 purple_stained_glass keep
setblock -474 115 1978 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#16","color":"#00FFFF"}','{"text":"EASY","color":"#00BBFF"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -528 45 1956 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1971 air replace
setblock -473 114 1971 purple_stained_glass keep
setblock -473 115 1971 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#17","color":"#00FFFF"}','{"text":"MEDIUM","color":"#55FF00"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -543 44 1940 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1972 air replace
setblock -473 114 1972 purple_stained_glass keep
setblock -473 115 1972 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#18","color":"#00FFFF"}','{"text":"MEDIUM","color":"#55FF00"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -525 51 1969 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1973 air replace
setblock -473 114 1973 purple_stained_glass keep
setblock -473 115 1973 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#19","color":"#00FFFF"}','{"text":"MEDIUM","color":"#55FF00"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -517 52 2006 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1974 air replace
setblock -473 114 1974 purple_stained_glass keep
setblock -473 115 1974 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#20","color":"#00FFFF"}','{"text":"MEDIUM","color":"#55FF00"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -543 51 2016 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1975 air replace
setblock -473 114 1975 purple_stained_glass keep
setblock -473 115 1975 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#21","color":"#00FFFF"}','{"text":"MEDIUM","color":"#55FF00"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -497 51 1995 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1976 air replace
setblock -473 114 1976 purple_stained_glass keep
setblock -473 115 1976 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#22","color":"#00FFFF"}','{"text":"MEDIUM","color":"#55FF00"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -505 51 1981 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1977 air replace
setblock -473 114 1977 purple_stained_glass keep
setblock -473 115 1977 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#23","color":"#00FFFF"}','{"text":"MEDIUM","color":"#55FF00"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -511 52 1958 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -473 115 1978 air replace
setblock -473 114 1978 purple_stained_glass keep
setblock -473 115 1978 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#24","color":"#00FFFF"}','{"text":"MEDIUM","color":"#55FF00"}','{"text":"Level 1","color":"#3EC2F3","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -505 51 1962 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1971 air replace
setblock -472 114 1971 purple_stained_glass keep
setblock -472 115 1971 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#25","color":"#00FFFF"}','{"text":"MEDIUM","color":"#55FF00"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -480 27 1992 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1972 air replace
setblock -472 114 1972 purple_stained_glass keep
setblock -472 115 1972 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#26","color":"#00FFFF"}','{"text":"MEDIUM","color":"#55FF00"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -484 18 2037 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1973 air replace
setblock -472 114 1973 purple_stained_glass keep
setblock -472 115 1973 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#27","color":"#00FFFF"}','{"text":"MEDIUM","color":"#55FF00"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -452 18 1979 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1974 air replace
setblock -472 114 1974 purple_stained_glass keep
setblock -472 115 1974 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#28","color":"#00FFFF"}','{"text":"MEDIUM","color":"#55FF00"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -475 16 1962 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1975 air replace
setblock -472 114 1975 purple_stained_glass keep
setblock -472 115 1975 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#29","color":"#00FFFF"}','{"text":"MEDIUM","color":"#55FF00"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -503 15 2033 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1976 air replace
setblock -472 114 1976 purple_stained_glass keep
setblock -472 115 1976 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#30","color":"#00FFFF"}','{"text":"MEDIUM","color":"#55FF00"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -487 20 2008 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1977 air replace
setblock -472 114 1977 purple_stained_glass keep
setblock -472 115 1977 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#31","color":"#00FFFF"}','{"text":"MEDIUM","color":"#55FF00"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -520 12 2025 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -472 115 1978 air replace
setblock -472 114 1978 purple_stained_glass keep
setblock -472 115 1978 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#32","color":"#00FFFF"}','{"text":"MEDIUM","color":"#55FF00"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -490 15 2002 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1971 air replace
setblock -471 114 1971 purple_stained_glass keep
setblock -471 115 1971 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#33","color":"#00FFFF"}','{"text":"HARD","color":"#FF9100"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -554 10 2024 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1972 air replace
setblock -471 114 1972 purple_stained_glass keep
setblock -471 115 1972 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#34","color":"#00FFFF"}','{"text":"HARD","color":"#FF9100"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -537 16 2003 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1973 air replace
setblock -471 114 1973 purple_stained_glass keep
setblock -471 115 1973 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#35","color":"#00FFFF"}','{"text":"HARD","color":"#FF9100"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -519 12 1982 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1974 air replace
setblock -471 114 1974 purple_stained_glass keep
setblock -471 115 1974 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#36","color":"#00FFFF"}','{"text":"HARD","color":"#FF9100"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -519 12 1943 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1975 air replace
setblock -471 114 1975 purple_stained_glass keep
setblock -471 115 1975 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#37","color":"#00FFFF"}','{"text":"HARD","color":"#FF9100"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -534 12 1939 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1976 air replace
setblock -471 114 1976 purple_stained_glass keep
setblock -471 115 1976 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#38","color":"#00FFFF"}','{"text":"HARD","color":"#FF9100"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -573 8 1966 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1977 air replace
setblock -471 114 1977 purple_stained_glass keep
setblock -471 115 1977 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#39","color":"#00FFFF"}','{"text":"HARD","color":"#FF9100"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -572 9 1944 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -471 115 1978 air replace
setblock -471 114 1978 purple_stained_glass keep
setblock -471 115 1978 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#40","color":"#00FFFF"}','{"text":"HARD","color":"#FF9100"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -588 13 1987 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1971 air replace
setblock -470 114 1971 purple_stained_glass keep
setblock -470 115 1971 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#41","color":"#00FFFF"}','{"text":"HARD","color":"#FF9100"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -505 23 1958 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1972 air replace
setblock -470 114 1972 purple_stained_glass keep
setblock -470 115 1972 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#42","color":"#00FFFF"}','{"text":"HARD","color":"#FF9100"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -549 10 1969 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1973 air replace
setblock -470 114 1973 purple_stained_glass keep
setblock -470 115 1973 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#43","color":"#00FFFF"}','{"text":"HARD","color":"#FF9100"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -575 13 1994 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1974 air replace
setblock -470 114 1974 purple_stained_glass keep
setblock -470 115 1974 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#44","color":"#00FFFF"}','{"text":"HARD","color":"#FF9100"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -571 12 2026 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1975 air replace
setblock -470 114 1975 purple_stained_glass keep
setblock -470 115 1975 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#45","color":"#00FFFF"}','{"text":"HARD","color":"#FF9100"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -599 12 2031 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1976 air replace
setblock -470 114 1976 purple_stained_glass keep
setblock -470 115 1976 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#46","color":"#00FFFF"}','{"text":"HARD","color":"#FF9100"}','{"text":"Level 2","color":"#FF5833","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -574 16 2014 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1977 air replace
setblock -470 114 1977 purple_stained_glass keep
setblock -470 115 1977 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#47","color":"#00FFFF"}','{"text":"HARD","color":"#FF9100"}','{"text":"Level 3⮂","color":"#B4B4B4","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -588 -9 1917 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -470 115 1978 air replace
setblock -470 114 1978 purple_stained_glass keep
setblock -470 115 1978 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#48","color":"#00FFFF"}','{"text":"HARD","color":"#FF9100"}','{"text":"Level 3⇈","color":"#B4B4B4","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -598 1 1890 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -469 115 1971 air replace
setblock -469 114 1971 purple_stained_glass keep
setblock -469 115 1971 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#49","color":"#00FFFF"}','{"text":"DEADLY","color":"#FF0000"}','{"text":"Level 3⇈","color":"#B4B4B4","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -623 1 1892 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -469 115 1972 air replace
setblock -469 114 1972 purple_stained_glass keep
setblock -469 115 1972 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#50","color":"#00FFFF"}','{"text":"DEADLY","color":"#FF0000"}','{"text":"Level 3⮂","color":"#B4B4B4","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -635 -9 1890 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -469 115 1973 air replace
setblock -469 114 1973 purple_stained_glass keep
setblock -469 115 1973 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#51","color":"#00FFFF"}','{"text":"DEADLY","color":"#FF0000"}','{"text":"Level 3⇈","color":"#B4B4B4","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -651 1 1916 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -469 115 1974 air replace
setblock -469 114 1974 purple_stained_glass keep
setblock -469 115 1974 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#52","color":"#00FFFF"}','{"text":"DEADLY","color":"#FF0000"}','{"text":"Level 3⮂","color":"#B4B4B4","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -604 -9 1914 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -469 115 1975 air replace
setblock -469 114 1975 purple_stained_glass keep
setblock -469 115 1975 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#53","color":"#00FFFF"}','{"text":"DEADLY","color":"#FF0000"}','{"text":"Level 3⇊","color":"#B4B4B4","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -629 -19 1920 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -469 115 1976 air replace
setblock -469 114 1976 purple_stained_glass keep
setblock -469 115 1976 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#54","color":"#00FFFF"}','{"text":"DEADLY","color":"#FF0000"}','{"text":"Level 3⇊","color":"#B4B4B4","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -603 -19 1924 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -469 115 1977 air replace
setblock -469 114 1977 purple_stained_glass keep
setblock -469 115 1977 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#55","color":"#00FFFF"}','{"text":"DEADLY","color":"#FF0000"}','{"text":"Level 3⇊","color":"#B4B4B4","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -613 -19 1889 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -469 115 1978 air replace
setblock -469 114 1978 purple_stained_glass keep
setblock -469 115 1978 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#56","color":"#00FFFF"}','{"text":"DEADLY","color":"#FF0000"}','{"text":"Level 3⇊","color":"#B4B4B4","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -589 -26 1898 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -468 115 1971 air replace
setblock -468 114 1971 purple_stained_glass keep
setblock -468 115 1971 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#57","color":"#00FFFF"}','{"text":"DEADLY","color":"#FF0000"}','{"text":"Level 3⇊","color":"#B4B4B4","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -582 -19 1896 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -468 115 1972 air replace
setblock -468 114 1972 purple_stained_glass keep
setblock -468 115 1972 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#58","color":"#00FFFF"}','{"text":"DEADLY","color":"#FF0000"}','{"text":"Level 3⮂","color":"#B4B4B4","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -580 -11 1892 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -468 115 1973 air replace
setblock -468 114 1973 purple_stained_glass keep
setblock -468 115 1973 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#59","color":"#00FFFF"}','{"text":"DEADLY","color":"#FF0000"}','{"text":"Level 3⮂","color":"#B4B4B4","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -598 -7 1881 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -468 115 1974 air replace
setblock -468 114 1974 purple_stained_glass keep
setblock -468 115 1974 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#60","color":"#00FFFF"}','{"text":"DEADLY","color":"#FF0000"}','{"text":"Level 3⇊","color":"#B4B4B4","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -623 -19 1890 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -468 115 1975 air replace
setblock -468 114 1975 purple_stained_glass keep
setblock -468 115 1975 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#61","color":"#00FFFF"}','{"text":"DEADLY","color":"#FF0000"}','{"text":"Level 3⇊","color":"#B4B4B4","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -648 -19 1893 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -468 115 1976 air replace
setblock -468 114 1976 purple_stained_glass keep
setblock -468 115 1976 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#62","color":"#00FFFF"}','{"text":"DEADLY","color":"#FF0000"}','{"text":"Level 3⮂","color":"#B4B4B4","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -659 -14 1922 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -468 115 1977 air replace
setblock -468 114 1977 purple_stained_glass keep
setblock -468 115 1977 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#63","color":"#00FFFF"}','{"text":"DEADLY","color":"#FF0000"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -637 -51 1888 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -468 115 1978 air replace
setblock -468 114 1978 purple_stained_glass keep
setblock -468 115 1978 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#64","color":"#00FFFF"}','{"text":"DEADLY","color":"#FF0000"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -622 -51 1889 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -467 115 1971 air replace
setblock -467 114 1971 purple_stained_glass keep
setblock -467 115 1971 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#65","color":"#00FFFF"}','{"text":"DEEPFROST","color":"#78008A"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -601 -49 1911 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -467 115 1972 air replace
setblock -467 114 1972 purple_stained_glass keep
setblock -467 115 1972 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#66","color":"#00FFFF"}','{"text":"DEEPFROST","color":"#78008A"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -601 -50 1890 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -467 115 1973 air replace
setblock -467 114 1973 purple_stained_glass keep
setblock -467 115 1973 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#67","color":"#00FFFF"}','{"text":"DEEPFROST","color":"#78008A"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -590 -51 1899 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -467 115 1974 air replace
setblock -467 114 1974 purple_stained_glass keep
setblock -467 115 1974 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#68","color":"#00FFFF"}','{"text":"DEEPFROST","color":"#78008A"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -574 -48 1910 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -467 115 1975 air replace
setblock -467 114 1975 purple_stained_glass keep
setblock -467 115 1975 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#69","color":"#00FFFF"}','{"text":"DEEPFROST","color":"#78008A"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -623 -52 1856 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -467 115 1976 air replace
setblock -467 114 1976 purple_stained_glass keep
setblock -467 115 1976 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#70","color":"#00FFFF"}','{"text":"DEEPFROST","color":"#78008A"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -607 -51 1863 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -467 115 1977 air replace
setblock -467 114 1977 purple_stained_glass keep
setblock -467 115 1977 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#71","color":"#00FFFF"}','{"text":"DEEPFROST","color":"#78008A"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -600 -51 1851 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -467 115 1978 air replace
setblock -467 114 1978 purple_stained_glass keep
setblock -467 115 1978 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#72","color":"#00FFFF"}','{"text":"DEEPFROST","color":"#78008A"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -623 -54 1842 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -466 115 1971 air replace
setblock -466 114 1971 purple_stained_glass keep
setblock -466 115 1971 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#73","color":"#00FFFF"}','{"text":"DEEPFROST","color":"#78008A"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -599 -51 1842 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -466 115 1972 air replace
setblock -466 114 1972 purple_stained_glass keep
setblock -466 115 1972 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#74","color":"#00FFFF"}','{"text":"DEEPFROST","color":"#78008A"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -591 -51 1870 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -466 115 1973 air replace
setblock -466 114 1973 purple_stained_glass keep
setblock -466 115 1973 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#75","color":"#00FFFF"}','{"text":"DEEPFROST","color":"#78008A"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -569 -51 1884 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -466 115 1974 air replace
setblock -466 114 1974 purple_stained_glass keep
setblock -466 115 1974 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#76","color":"#00FFFF"}','{"text":"DEEPFROST","color":"#78008A"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -568 -51 1878 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -466 115 1975 air replace
setblock -466 114 1975 purple_stained_glass keep
setblock -466 115 1975 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#77","color":"#00FFFF"}','{"text":"DEEPFROST","color":"#78008A"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -636 -56 1842 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -466 115 1976 air replace
setblock -466 114 1976 purple_stained_glass keep
setblock -466 115 1976 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#78","color":"#00FFFF"}','{"text":"DEEPFROST","color":"#78008A"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -635 -51 1877 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -466 115 1977 air replace
setblock -466 114 1977 purple_stained_glass keep
setblock -466 115 1977 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#79","color":"#00FFFF"}','{"text":"DEEPFROST","color":"#78008A"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -590 -51 1864 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -466 115 1978 air replace
setblock -466 114 1978 purple_stained_glass keep
setblock -466 115 1978 oak_sign[rotation=8]{front_text:{messages:['{"text":"Artifact Dropper","color":"#C800FF"}','{"text":"#80","color":"#00FFFF"}','{"text":"DEEPFROST","color":"#78008A"}','{"text":"Level 4","color":"#6F1D8C","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -570 -51 1853 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace

# Embers
setblock -464 115 1959 air replace
setblock -464 114 1959 blue_stained_glass keep
setblock -464 115 1959 oak_sign[rotation=8]{front_text:{messages:['{"text":"","color":""}','{"text":"Ember","color":"#00B3FF"}','{"text":"Droppers","color":"#00B3FF"}','{"text":"","color":"","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -519 35 2002 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace

# Crown Shop Products
setblock -461 115 1967 air replace
setblock -461 114 1967 orange_stained_glass keep
setblock -461 115 1967 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product for sale","color":"#FFEB64"}','{"text":"#01","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -509 104 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -461 115 1968 air replace
setblock -461 114 1968 orange_stained_glass keep
setblock -461 115 1968 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product for sale","color":"#FFEB64"}','{"text":"#02","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -508 104 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -461 115 1969 air replace
setblock -461 114 1969 orange_stained_glass keep
setblock -461 115 1969 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product for sale","color":"#FFEB64"}','{"text":"#03","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -507 104 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -461 115 1970 air replace
setblock -461 114 1970 orange_stained_glass keep
setblock -461 115 1970 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product for sale","color":"#FFEB64"}','{"text":"#04","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -506 104 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -461 115 1971 air replace
setblock -461 114 1971 orange_stained_glass keep
setblock -461 115 1971 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product for sale","color":"#FFEB64"}','{"text":"#05","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -505 104 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -461 115 1972 air replace
setblock -461 114 1972 orange_stained_glass keep
setblock -461 115 1972 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product for sale","color":"#FFEB64"}','{"text":"#06","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -504 104 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -461 115 1973 air replace
setblock -461 114 1973 orange_stained_glass keep
setblock -461 115 1973 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product for sale","color":"#FFEB64"}','{"text":"#07","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -503 104 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -461 115 1974 air replace
setblock -461 114 1974 orange_stained_glass keep
setblock -461 115 1974 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product for sale","color":"#FFEB64"}','{"text":"#08","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -502 104 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -461 115 1975 air replace
setblock -461 114 1975 orange_stained_glass keep
setblock -461 115 1975 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product for sale","color":"#FFEB64"}','{"text":"#09","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -501 104 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -461 115 1976 air replace
setblock -461 114 1976 orange_stained_glass keep
setblock -461 115 1976 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product for sale","color":"#FFEB64"}','{"text":"#10","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -500 104 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -461 115 1977 air replace
setblock -461 114 1977 orange_stained_glass keep
setblock -461 115 1977 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product for sale","color":"#FFEB64"}','{"text":"#11","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -499 104 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -461 115 1978 air replace
setblock -461 114 1978 orange_stained_glass keep
setblock -461 115 1978 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product for sale","color":"#FFEB64"}','{"text":"#12","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -498 104 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -461 115 1979 air replace
setblock -461 114 1979 orange_stained_glass keep
setblock -461 115 1979 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product for sale","color":"#FFEB64"}','{"text":"#13","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -497 104 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -461 115 1980 air replace
setblock -461 114 1980 orange_stained_glass keep
setblock -461 115 1980 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product for sale","color":"#FFEB64"}','{"text":"#14","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -496 104 1972 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace

# Crown Shop Prices
setblock -462 115 1967 air replace
setblock -462 114 1967 orange_stained_glass keep
setblock -462 115 1967 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product\'s price","color":"#FFEB64"}','{"text":"#01","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -509 106 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -462 115 1968 air replace
setblock -462 114 1968 orange_stained_glass keep
setblock -462 115 1968 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product\'s price","color":"#FFEB64"}','{"text":"#02","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -508 106 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -462 115 1969 air replace
setblock -462 114 1969 orange_stained_glass keep
setblock -462 115 1969 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product\'s price","color":"#FFEB64"}','{"text":"#03","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -507 106 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -462 115 1970 air replace
setblock -462 114 1970 orange_stained_glass keep
setblock -462 115 1970 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product\'s price","color":"#FFEB64"}','{"text":"#04","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -506 106 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -462 115 1971 air replace
setblock -462 114 1971 orange_stained_glass keep
setblock -462 115 1971 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product\'s price","color":"#FFEB64"}','{"text":"#05","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -505 106 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -462 115 1972 air replace
setblock -462 114 1972 orange_stained_glass keep
setblock -462 115 1972 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product\'s price","color":"#FFEB64"}','{"text":"#06","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -504 106 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -462 115 1973 air replace
setblock -462 114 1973 orange_stained_glass keep
setblock -462 115 1973 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product\'s price","color":"#FFEB64"}','{"text":"#07","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -503 106 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -462 115 1974 air replace
setblock -462 114 1974 orange_stained_glass keep
setblock -462 115 1974 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product\'s price","color":"#FFEB64"}','{"text":"#08","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -502 106 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -462 115 1975 air replace
setblock -462 114 1975 orange_stained_glass keep
setblock -462 115 1975 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product\'s price","color":"#FFEB64"}','{"text":"#09","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -501 106 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -462 115 1976 air replace
setblock -462 114 1976 orange_stained_glass keep
setblock -462 115 1976 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product\'s price","color":"#FFEB64"}','{"text":"#10","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -500 106 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -462 115 1977 air replace
setblock -462 114 1977 orange_stained_glass keep
setblock -462 115 1977 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product\'s price","color":"#FFEB64"}','{"text":"#11","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -499 106 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -462 115 1978 air replace
setblock -462 114 1978 orange_stained_glass keep
setblock -462 115 1978 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product\'s price","color":"#FFEB64"}','{"text":"#12","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -498 106 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -462 115 1979 air replace
setblock -462 114 1979 orange_stained_glass keep
setblock -462 115 1979 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product\'s price","color":"#FFEB64"}','{"text":"#13","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -497 106 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -462 115 1980 air replace
setblock -462 114 1980 orange_stained_glass keep
setblock -462 115 1980 oak_sign[rotation=8]{front_text:{messages:['{"text":"Crown Shop","color":"#FFEB64"}','{"text":"","color":"#FFEB64"}','{"text":"product\'s price","color":"#FFEB64"}','{"text":"#14","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -496 106 1975 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace

# Ember Shop Products
setblock -458 115 1967 air replace
setblock -458 114 1967 light_blue_stained_glass keep
setblock -458 115 1967 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#01","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 1992 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1968 air replace
setblock -458 114 1968 light_blue_stained_glass keep
setblock -458 115 1968 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#02","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 1993 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1969 air replace
setblock -458 114 1969 light_blue_stained_glass keep
setblock -458 115 1969 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#03","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 1994 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1970 air replace
setblock -458 114 1970 light_blue_stained_glass keep
setblock -458 115 1970 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#04","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 1995 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1971 air replace
setblock -458 114 1971 light_blue_stained_glass keep
setblock -458 115 1971 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#05","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 1996 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1972 air replace
setblock -458 114 1972 light_blue_stained_glass keep
setblock -458 115 1972 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#06","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 1997 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1973 air replace
setblock -458 114 1973 light_blue_stained_glass keep
setblock -458 115 1973 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#07","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 1998 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1974 air replace
setblock -458 114 1974 light_blue_stained_glass keep
setblock -458 115 1974 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#08","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 1999 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1975 air replace
setblock -458 114 1975 light_blue_stained_glass keep
setblock -458 115 1975 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#09","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 2000 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1976 air replace
setblock -458 114 1976 light_blue_stained_glass keep
setblock -458 115 1976 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#10","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 2001 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1977 air replace
setblock -458 114 1977 light_blue_stained_glass keep
setblock -458 115 1977 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#11","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 2002 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1978 air replace
setblock -458 114 1978 light_blue_stained_glass keep
setblock -458 115 1978 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#12","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 2003 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1979 air replace
setblock -458 114 1979 light_blue_stained_glass keep
setblock -458 115 1979 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#13","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 2004 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1980 air replace
setblock -458 114 1980 light_blue_stained_glass keep
setblock -458 115 1980 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#14","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 2005 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1981 air replace
setblock -458 114 1981 light_blue_stained_glass keep
setblock -458 115 1981 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#15","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 2006 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1982 air replace
setblock -458 114 1982 light_blue_stained_glass keep
setblock -458 115 1982 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#16","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 2007 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1983 air replace
setblock -458 114 1983 light_blue_stained_glass keep
setblock -458 115 1983 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#17","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 2008 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1984 air replace
setblock -458 114 1984 light_blue_stained_glass keep
setblock -458 115 1984 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#18","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 2009 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1985 air replace
setblock -458 114 1985 light_blue_stained_glass keep
setblock -458 115 1985 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#19","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 2010 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1986 air replace
setblock -458 114 1986 light_blue_stained_glass keep
setblock -458 115 1986 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#20","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 2011 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1987 air replace
setblock -458 114 1987 light_blue_stained_glass keep
setblock -458 115 1987 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#21","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 2012 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1988 air replace
setblock -458 114 1988 light_blue_stained_glass keep
setblock -458 115 1988 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#22","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 2013 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -458 115 1989 air replace
setblock -458 114 1989 light_blue_stained_glass keep
setblock -458 115 1989 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#23","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -630 -20 2014 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1967 air replace
setblock -455 114 1967 light_blue_stained_glass keep
setblock -455 115 1967 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#24","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 1992 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1968 air replace
setblock -455 114 1968 light_blue_stained_glass keep
setblock -455 115 1968 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#25","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 1993 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1969 air replace
setblock -455 114 1969 light_blue_stained_glass keep
setblock -455 115 1969 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#26","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 1994 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1970 air replace
setblock -455 114 1970 light_blue_stained_glass keep
setblock -455 115 1970 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#27","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 1995 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1971 air replace
setblock -455 114 1971 light_blue_stained_glass keep
setblock -455 115 1971 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#28","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 1996 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1972 air replace
setblock -455 114 1972 light_blue_stained_glass keep
setblock -455 115 1972 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#29","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 1997 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1973 air replace
setblock -455 114 1973 light_blue_stained_glass keep
setblock -455 115 1973 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#30","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 1998 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1974 air replace
setblock -455 114 1974 light_blue_stained_glass keep
setblock -455 115 1974 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#31","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 1999 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1975 air replace
setblock -455 114 1975 light_blue_stained_glass keep
setblock -455 115 1975 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#32","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 2000 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1976 air replace
setblock -455 114 1976 light_blue_stained_glass keep
setblock -455 115 1976 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#33","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 2001 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1977 air replace
setblock -455 114 1977 light_blue_stained_glass keep
setblock -455 115 1977 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#34","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 2002 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1978 air replace
setblock -455 114 1978 light_blue_stained_glass keep
setblock -455 115 1978 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#35","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 2003 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1979 air replace
setblock -455 114 1979 light_blue_stained_glass keep
setblock -455 115 1979 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#36","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 2004 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1980 air replace
setblock -455 114 1980 light_blue_stained_glass keep
setblock -455 115 1980 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#37","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 2005 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1981 air replace
setblock -455 114 1981 light_blue_stained_glass keep
setblock -455 115 1981 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#38","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 2006 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1982 air replace
setblock -455 114 1982 light_blue_stained_glass keep
setblock -455 115 1982 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#39","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 2007 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1983 air replace
setblock -455 114 1983 light_blue_stained_glass keep
setblock -455 115 1983 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#40","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 2008 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1984 air replace
setblock -455 114 1984 light_blue_stained_glass keep
setblock -455 115 1984 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#41","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 2009 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1985 air replace
setblock -455 114 1985 light_blue_stained_glass keep
setblock -455 115 1985 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#42","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 2010 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1986 air replace
setblock -455 114 1986 light_blue_stained_glass keep
setblock -455 115 1986 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#43","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 2011 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1987 air replace
setblock -455 114 1987 light_blue_stained_glass keep
setblock -455 115 1987 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#44","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 2012 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1988 air replace
setblock -455 114 1988 light_blue_stained_glass keep
setblock -455 115 1988 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#45","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 2013 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -455 115 1989 air replace
setblock -455 114 1989 light_blue_stained_glass keep
setblock -455 115 1989 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product for sale","color":"#0974FF"}','{"text":"#46","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -644 -20 2014 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace

# Ember Shop Prices
setblock -459 115 1967 air replace
setblock -459 114 1967 light_blue_stained_glass keep
setblock -459 115 1967 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#01","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 1992 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1968 air replace
setblock -459 114 1968 light_blue_stained_glass keep
setblock -459 115 1968 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#02","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 1993 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1969 air replace
setblock -459 114 1969 light_blue_stained_glass keep
setblock -459 115 1969 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#03","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 1994 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1970 air replace
setblock -459 114 1970 light_blue_stained_glass keep
setblock -459 115 1970 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#04","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 1995 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1971 air replace
setblock -459 114 1971 light_blue_stained_glass keep
setblock -459 115 1971 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#05","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 1996 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1972 air replace
setblock -459 114 1972 light_blue_stained_glass keep
setblock -459 115 1972 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#06","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 1997 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1973 air replace
setblock -459 114 1973 light_blue_stained_glass keep
setblock -459 115 1973 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#07","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 1998 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1974 air replace
setblock -459 114 1974 light_blue_stained_glass keep
setblock -459 115 1974 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#08","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 1999 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1975 air replace
setblock -459 114 1975 light_blue_stained_glass keep
setblock -459 115 1975 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#09","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 2000 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1976 air replace
setblock -459 114 1976 light_blue_stained_glass keep
setblock -459 115 1976 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#10","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 2001 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1977 air replace
setblock -459 114 1977 light_blue_stained_glass keep
setblock -459 115 1977 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#11","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 2002 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1978 air replace
setblock -459 114 1978 light_blue_stained_glass keep
setblock -459 115 1978 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#12","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 2003 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1979 air replace
setblock -459 114 1979 light_blue_stained_glass keep
setblock -459 115 1979 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#13","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 2004 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1980 air replace
setblock -459 114 1980 light_blue_stained_glass keep
setblock -459 115 1980 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#14","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 2005 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1981 air replace
setblock -459 114 1981 light_blue_stained_glass keep
setblock -459 115 1981 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#15","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 2006 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1982 air replace
setblock -459 114 1982 light_blue_stained_glass keep
setblock -459 115 1982 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#16","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 2007 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1983 air replace
setblock -459 114 1983 light_blue_stained_glass keep
setblock -459 115 1983 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#17","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 2008 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1984 air replace
setblock -459 114 1984 light_blue_stained_glass keep
setblock -459 115 1984 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#18","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 2009 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1985 air replace
setblock -459 114 1985 light_blue_stained_glass keep
setblock -459 115 1985 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#19","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 2010 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1986 air replace
setblock -459 114 1986 light_blue_stained_glass keep
setblock -459 115 1986 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#20","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 2011 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1987 air replace
setblock -459 114 1987 light_blue_stained_glass keep
setblock -459 115 1987 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#21","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 2012 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1988 air replace
setblock -459 114 1988 light_blue_stained_glass keep
setblock -459 115 1988 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#22","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 2013 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -459 115 1989 air replace
setblock -459 114 1989 light_blue_stained_glass keep
setblock -459 115 1989 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#23","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -632 -18 2014 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1967 air replace
setblock -456 114 1967 light_blue_stained_glass keep
setblock -456 115 1967 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#24","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 1992 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1968 air replace
setblock -456 114 1968 light_blue_stained_glass keep
setblock -456 115 1968 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#25","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 1993 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1969 air replace
setblock -456 114 1969 light_blue_stained_glass keep
setblock -456 115 1969 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#26","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 1994 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1970 air replace
setblock -456 114 1970 light_blue_stained_glass keep
setblock -456 115 1970 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#27","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 1995 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1971 air replace
setblock -456 114 1971 light_blue_stained_glass keep
setblock -456 115 1971 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#28","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 1996 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1972 air replace
setblock -456 114 1972 light_blue_stained_glass keep
setblock -456 115 1972 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#29","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 1997 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1973 air replace
setblock -456 114 1973 light_blue_stained_glass keep
setblock -456 115 1973 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#30","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 1998 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1974 air replace
setblock -456 114 1974 light_blue_stained_glass keep
setblock -456 115 1974 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#31","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 1999 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1975 air replace
setblock -456 114 1975 light_blue_stained_glass keep
setblock -456 115 1975 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#32","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 2000 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1976 air replace
setblock -456 114 1976 light_blue_stained_glass keep
setblock -456 115 1976 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#33","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 2001 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1977 air replace
setblock -456 114 1977 light_blue_stained_glass keep
setblock -456 115 1977 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#34","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 2002 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1978 air replace
setblock -456 114 1978 light_blue_stained_glass keep
setblock -456 115 1978 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#35","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 2003 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1979 air replace
setblock -456 114 1979 light_blue_stained_glass keep
setblock -456 115 1979 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#36","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 2004 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1980 air replace
setblock -456 114 1980 light_blue_stained_glass keep
setblock -456 115 1980 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#37","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 2005 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1981 air replace
setblock -456 114 1981 light_blue_stained_glass keep
setblock -456 115 1981 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#38","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 2006 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1982 air replace
setblock -456 114 1982 light_blue_stained_glass keep
setblock -456 115 1982 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#39","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 2007 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1983 air replace
setblock -456 114 1983 light_blue_stained_glass keep
setblock -456 115 1983 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#40","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 2008 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1984 air replace
setblock -456 114 1984 light_blue_stained_glass keep
setblock -456 115 1984 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#41","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 2009 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1985 air replace
setblock -456 114 1985 light_blue_stained_glass keep
setblock -456 115 1985 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#42","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 2010 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1986 air replace
setblock -456 114 1986 light_blue_stained_glass keep
setblock -456 115 1986 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#43","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 2011 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1987 air replace
setblock -456 114 1987 light_blue_stained_glass keep
setblock -456 115 1987 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#44","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 2012 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1988 air replace
setblock -456 114 1988 light_blue_stained_glass keep
setblock -456 115 1988 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#45","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 2013 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -456 115 1989 air replace
setblock -456 114 1989 light_blue_stained_glass keep
setblock -456 115 1989 oak_sign[rotation=8]{front_text:{messages:['{"text":"Ember Shop","color":"#0974FF"}','{"text":"","color":"#0974FF"}','{"text":"product\'s price","color":"#0974FF"}','{"text":"#46","color":"#00FFFF","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -642 -18 2014 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace

# Other
# Rusty Repair Loot
setblock -464 115 1962 air replace
setblock -464 114 1962 lime_stained_glass keep
setblock -464 115 1962 oak_sign[rotation=8]{front_text:{messages:['{"text":"","color":""}','{"text":"Rusty Repair","color":"#5BFF09"}','{"text":"Dropper","color":"#5BFF09"}','{"text":"","color":"","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -518 2 2007 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
# Halloween Hut Loot
setblock -466 115 1962 air replace
setblock -466 114 1962 lime_stained_glass keep
setblock -466 115 1962 oak_sign[rotation=8]{front_text:{messages:['{"text":"","color":""}','{"text":"Halloween Hut","color":"#5BFF09"}','{"text":"Dropper","color":"#5BFF09"}','{"text":"","color":"","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -523 12 2042 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
# Pirate's Bounty
setblock -466 115 1959 air replace
setblock -466 114 1959 lime_stained_glass keep
setblock -466 115 1959 oak_sign[rotation=8]{front_text:{messages:['{"text":"","color":""}','{"text":"Pirate\'s Bounty","color":"#5BFF09"}','{"text":"Dropper","color":"#5BFF09"}','{"text":"","color":"","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -574 39 1985 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
# TnT Dive; Common/Rare
setblock -466 115 1965 air replace
setblock -466 114 1965 lime_stained_glass keep
setblock -466 115 1965 oak_sign[rotation=8]{front_text:{messages:['{"text":"","color":""}','{"text":"TnT Dive; Common","color":"#5BFF09"}','{"text":"Dropper","color":"#5BFF09"}','{"text":"","color":"","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -578 15 1968 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
setblock -464 115 1965 air replace
setblock -464 114 1965 lime_stained_glass keep
setblock -464 115 1965 oak_sign[rotation=8]{front_text:{messages:['{"text":"","color":""}','{"text":"TnT Dive; Rare","color":"#5BFF09"}','{"text":"Dropper","color":"#5BFF09"}','{"text":"","color":"","bold":true,"clickEvent":{"action":"run_command","value":"/execute positioned -578 15 1970 as @s if entity @s[tag=dropper_teleporting_allowed] run tp @s ~ ~ ~"}}']},is_waxed:1b} replace
