# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Testing for Ravagers."}]
# - End Log -

# Ravager named 'Stumbles' should be tagged with L1Z1
# Ravager named 'Laser Beams' should be tagged with L1Z2
# Ravager named 'Lasagna' should be tagged with L1Z3
# Ravager named 'Hot Breath' should be tagged with L1Z4
# Ravager named 'Mr. Poopy Head' should be tagged with L1Z4
# Ravager named 'Skadoodles' should be tagged with L2Z1
# Ravager named 'Snausages' should be tagged with L2Z2
# Ravager named 'big butts and I cannot lie' should be tagged with L2Z3
# Ravager named 'Sir Fluffykins of the Dungeon' should be tagged with L2Z4
# Ravager named 'Nugget' should be tagged with L2Z5


# Need to check if ONE ravager is not existing. Best way I could do this:
scoreboard objectives add do2.tests.all_ravagers_alive dummy
scoreboard players set $dungeon do2.tests.all_ravagers_alive 1

# Level 1 Ravagers
execute unless entity @e[type=minecraft:ravager,tag=L1Z1] run scoreboard players set $dungeon do2.tests.all_ravagers_alive 0
execute unless entity @e[type=minecraft:ravager,tag=L1Z2] run scoreboard players set $dungeon do2.tests.all_ravagers_alive 0
execute unless entity @e[type=minecraft:ravager,tag=L1Z3] run scoreboard players set $dungeon do2.tests.all_ravagers_alive 0
execute unless entity @e[type=minecraft:ravager,tag=L1Z4] run scoreboard players set $dungeon do2.tests.all_ravagers_alive 0
execute unless entity @e[type=minecraft:ravager,tag=L1Z5] run scoreboard players set $dungeon do2.tests.all_ravagers_alive 0
# Level 2 Ravagers
execute unless entity @e[type=minecraft:ravager,tag=L2Z1] run scoreboard players set $dungeon do2.tests.all_ravagers_alive 0
execute unless entity @e[type=minecraft:ravager,tag=L2Z2] run scoreboard players set $dungeon do2.tests.all_ravagers_alive 0
execute unless entity @e[type=minecraft:ravager,tag=L2Z3] run scoreboard players set $dungeon do2.tests.all_ravagers_alive 0
execute unless entity @e[type=minecraft:ravager,tag=L2Z4] run scoreboard players set $dungeon do2.tests.all_ravagers_alive 0
execute unless entity @e[type=minecraft:ravager,tag=L2Z5] run scoreboard players set $dungeon do2.tests.all_ravagers_alive 0
# Death Room Ravager
execute unless entity @e[type=minecraft:ravager,tag=L0DEATHROOM] run scoreboard players set $dungeon do2.tests.all_ravagers_alive 0


execute unless score $dungeon do2.tests.all_ravagers_alive matches 1 run function do2:dungeon_setup/summon_ravagers
scoreboard objectives remove do2.tests.all_ravagers_alive

