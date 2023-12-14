# Guide to functions of datapack

A comprehensive overview of all the functions in the Brilliance datapack. Functions can be called by command blocks, minecraft-events or other functions.

## Advancements

### setup_root

Used to ensure strict ordering of advancement tabs. Calls `grant_visible`

### grant_visible

Hidden advancements are stored as true versions of the advancement. To help maintain order they are granted whenever the player reloads into the server.

## Events

### on_datapack_load

Called when datapack is loaded for the first time. This will include each time a dungeon world is instantiated.

### on_lose

Called when a dungeon run ends without retrieving the artifact. (called from tick when player dies).

### on_player_rejoin

Called when player rejoins the server after disconnecting.

### on_tick

Called every game tick.

### on_win

Called when a dungeon run ends after the player has submitted the artifact.

## Scoreboard

### setup

Adds all the various datapoints needed to track statistics in the dungeon as well as process the advancements and potentially game functionality too.

## Other

### dungeon_timer

Runs a clock that counts ticks and seconds. 

### end_run

Called when a run has ended. This will be where Brilliance tells agro-net to take over and start processing all the data!

### player_setup

MOVE THIS TO AN EVENT 'ON_START'!
