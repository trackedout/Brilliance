The directory /default_states/ will always set the block (~ ~ ~)

The reason why is because /default_states/ is used in TWO different locations.
 - Dungeon Droppers
 - Dropper Room Droppers
 So in each spot they will run:
 /execute positioned X Y Z run function do2:reset_dungeon/default_states/*
