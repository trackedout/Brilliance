# this function gets called when a player eats smt unique for the first time.

# increase the amount of things they've eaten
scoreboard players add @s doc.adv.threecoursemeal 1

# check if they've eaten three things, if so grant them the advancement.
execute as @s[scores={doc.adv.threecoursemeal=3..}] run advancement grant @s only do2:hidden/adventuring/eat_three_uniques
