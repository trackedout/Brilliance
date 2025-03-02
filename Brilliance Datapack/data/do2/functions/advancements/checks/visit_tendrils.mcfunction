# this function gets called when a player visits each tendril for the first time

# increase the amount of tendrils visted
scoreboard players add @s do2.tendriltravels 1
execute unless score $dungeon do2.tendriltravels > @s do2.tendriltravels run scoreboard players operation $dungeon do2.tendriltravels = @s do2.tendriltravels
