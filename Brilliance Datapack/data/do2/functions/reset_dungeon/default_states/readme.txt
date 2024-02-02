The directory /default_states/ will always set the block (~ ~ ~)

The reason why is because /default_states/ is used in TWO different locations.
 - /reset_droppers/do
 - /refill/refill_droppers
 So in each spot they will run:
 /execute positioned X Y Z run function do2:reset_dungeon/default_states/*
