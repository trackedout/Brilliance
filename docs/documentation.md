# Brilliance Datapack

Brilliance is the companion datapack for the *Tracked Out: Decked Out* server. It serves multiple purposes in running the Decked Out 2 dungeon and assisting with the general overall gameplay. Some of the key features include: providing player advancements and rewards in the dungeon, processing gameplay events and tracking and sending data with agronet to dunga-dunga. This document serves to provide a comprehensive overview of all the features to allow other teams understand how it works.

# Functions

## Advancements

For all functions related to maintaining advancements. This doesn't include granting advancements which are mostly found in the Events section.

### [checks/](./../Brilliance%20Datapack/data/do2/functions/advancements/checks)

Utility functions for giving advancements that are based on scores in the scoreboard.

TODO: *Might not be needed as advancements have the ability to check scoreboards*

### [grant_visible/](./../Brilliance%20Datapack/data/do2/functions/advancements/grant_visible)

Minecraft likes to mess with the advancement ordering even after the advancements have been granted. To overcome this we need to manually reorder them ourselves. To do this we have to keep tack of the advancements but be able to revoke and regrant them in the right order. 'Hidden advancements' are the true tracker of players progress whereas 'Visible' are used as the front end advancements the player can see in game.

Note visible advancements don't show toasts or announce to chat when accomplished since they'll frequently be resetting whereas hidden advancements do.

### [order_tabs](./../Brilliance%20Datapack/data/do2/functions/advancements/order_tabs.mcfunction "order_tabs.mcfunction")

This function gives the player the root advancement for each tab in a certain order by granting them once per tick. Note, it advancements are received in order but within the same tick Minecraft will still decide to sort the advancements how it wants. To overcome this a series of commands are given in reverse order from how we want to position them with the caveat that they require the following commands to have been executed with conditional statements.

### [reset_threecoursemeal](./../Brilliance%20Datapack/data/do2/functions/advancements/reset_threecoursemeal.mcfunction "reset_threecoursemeal.mcfunction")

Three course meal is an advancement that you need to do multiple things in one run. Here we reset that progress at the end of the run.

TODO: *Change to be more generic for all advancemenets - i.e. 'reset_per_run'.*

## Events

### [dungeon/](./../Brilliance%20Datapack/data/do2/functions/events/dungeon)

Here all events that are related to certain locations in the dungeon are kept. However, this doesn't include major points relating to the core game loop such as entering and exiting the dungeon. The following is a list of the functions and what they do.

Name | Description
------------- | -------------
on_egg_find/ | Triggered when an egg is found in the dungeon.
on_key_submitted/ | Triggered when the various keys in the dungeon are placed in their corresponding containers.
[on_door_bomb](./../Brilliance%20Datapack/data/do2/functions/events/dungeon/on_door_bomb.mcfunction) | Triggered when the bomb is placed to destroy the door on level 4.
[on_rusty_repair_kit](./../Brilliance%20Datapack/data/do2/functions/events/dungeon/on_rusty_repair.mcfunction) | Triggered when the player uses a rusty repair kit to fix up Rusty.

CONTINUED...

TODO: *Add command blocks hooked up to the red stone. Move egg conditions to predicates.*

### [systems/](./../Brilliance%20Datapack/data/do2/functions/events/systems)

### [on_datapack_load](./../Brilliance%20Datapack/data/do2/functions/events/on_datapack_load.mcfunction "on_datapack_load.mcfunction")

### [on_game_end](./../Brilliance%20Datapack/data/do2/functions/events/on_game_end.mcfunction "on_game_end.mcfunction")

## Scoreboard

- include list of scoreboard objectives being used.

## General

- as well as functions, include nbt tags being used.

# Predicates

- just a table of predicates maybe.

# Other

- who knows what to put here
