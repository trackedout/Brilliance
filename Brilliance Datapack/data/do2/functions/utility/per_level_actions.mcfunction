# Test for dripstone IF player is on L2
execute if entity @a[scores={do2.utility.dungeonLocation=10}] run function do2:dungeon_setup/test_for_cove_dripstone

# Discover player's DEEPEST FLOOR REACHED
execute as @a[tag=!do2.fakePlayer] if score @s do2.utility.dungeonLocation matches 9 unless score @s do2.run.deepest_floor matches 1.. run scoreboard players set @s do2.run.deepest_floor 1
execute as @a[tag=!do2.fakePlayer] if score @s do2.utility.dungeonLocation matches 10 unless score @s do2.run.deepest_floor matches 2.. run scoreboard players set @s do2.run.deepest_floor 2
execute as @a[tag=!do2.fakePlayer] if score @s do2.utility.dungeonLocation matches 11 unless score @s do2.run.deepest_floor matches 3.. run scoreboard players set @s do2.run.deepest_floor 3
execute as @a[tag=!do2.fakePlayer] if score @s do2.utility.dungeonLocation matches 12 unless score @s do2.run.deepest_floor matches 4.. run scoreboard players set @s do2.run.deepest_floor 4
execute as @a[tag=!do2.fakePlayer] if score @s do2.run.deepest_floor > $dungeon do2.run.deepest_floor run scoreboard players operation $dungeon do2.run.deepest_floor = @s do2.run.deepest_floor

