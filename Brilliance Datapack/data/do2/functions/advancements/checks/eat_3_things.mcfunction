# Make sure they can only get progress while running
execute if entity @s[tag=!do2.running] run return 0

# increase the amount of things they've eaten
scoreboard players add @s do2.run.threecoursemeal 1
