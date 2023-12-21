# Brilliance Datapack

 
Brilliance is the companion datapack for the *Tracked Out: Decked Out* server. It serves multiple purposes in running the Decked Out 2 dungeon and assisting with the general overall gameplay. Some of the key features include: providing player advancements and rewards in the dungeon, processing gameplay events and tracking and sending data with agronet to dunga-dunga. This document serves to provide a comprehensive overview of all the features to allow other teams understand how it works.


# Advancements

Brilliance provides the player with several advancements that are obtainable through running the dungeon. Advancements range from exploring the many secrets of the dungeon and building a strong deck of cards. The advancements are split into 7 (8 including an empty) tabs of different categorized advancements namely: adventuring, survival, cards, treasure, phases, dlc, *empty* and credits. Advancements are mainly taken from Tracked Out's 'Wacky Achievements' which are a subset of 'Tracked Out Trophies (ToTs)'.

## Adventuring

For all advancements related to exploring the dungeon, finding unique items and completing secrets. When referencing these advancements in Minecraft, use the following naming convention - do2:hidden/adventuring/*file_name*.

Name | File | Description | Parent
------------- | ------------- | ------------- | -------------
Adventure awaits! | [adventuring_root.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/hidden/adventuring/adventuring_root.json "adventuring_root.json") | Advancements related to adventuring in Decked Out will appear here! | root
The True Winner | [beat_decked_out.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/hidden/adventuring/beat_decked_out.json "beat_decked_out.json") | Beat Decked Out 2. | travel_to_tendrils
Creative Composter | [bonemeal_pickup.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/hidden/adventuring/bonemeal_pickup.json "bonemeal_pickup.json") | Obtain bonemeal in the dungeon. | eat_berries
Food Tour | [eat_berries.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/hidden/adventuring/eat_berries.json "eat_berries.json") | Eat a berry obtained in the dungeon ~~(could be poisonous)~~. | adventuring_root
Famished Fisher | [eat_fish.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/hidden/adventuring/eat_fish.json "eat_fish.json") | Eat a fish in the dungeon. | eat_berries
Composting Cultivator | [eat_glow_berries.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/hidden/adventuring/eat_glow_berries.json "eat_glow_berries.json") | Use bonemeal to grow your own glowberries, and eat them. | bonemeal_pickup
Three Course Meal | [eat_three_uniques.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/hidden/adventuring/eat_three_uniques.json "eat_three_uniques.json") | In a single run, eat three different kinds of food. | eat_fish
Key Luck Totem | [enter_with_1_unique_keys.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/hidden/adventuring/enter_with_1_unique_keys.json) | Enter the dungeon with a level key to ward off bad key luck. |  adventuring_root
Dungeon Locksmith | [enter_with_3_unique_keys.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/hidden/adventuring/enter_with_3_unique_keys.json "enter_with_3_unique_keys.json") | Enter the dungeon with all three level keys. | enter_with_1_unique_keys
Egg Hunter | [find_a_egg.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/hidden/adventuring/find_a_egg.json "find_a_egg.json") | Discover an Easter egg. | adventuring_root
Easter Bunny | [find_all_eggs.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/hidden/adventuring/find_all_eggs.json "find_all_eggs.json") | Discover all Easter eggs. | find_a_egg
Basically the Key God(dess) | [have_4_unique_keys.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/hidden/adventuring/have_4_unique_keys.json "have_4_unique_keys.json") | While inside the dungeon, have all four keys in your inventory simultaneously, including artifact Dungeon Master's Key. | enter_with_3_unique_keys
Dungeon Detonator | [open_basalt_door.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/hidden/adventuring/open_basalt_door.json "open_basalt_door.json") | Find a bomb and detonate it. | adventuring_root
Dungeon Dawdler | [run_too_long.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/hidden/adventuring/run_too_long.json "run_too_long.json") | Stay in the dungeon for a little too long. | adventuring_root
Strung Along | [string_pickup.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/hidden/adventuring/string_pickup.json "string_pickup.json") | Obtain string inside the dungeon. | adventuring_root
Dangerous Dive | [survive_tnt_dive.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/adventuring/survive_tnt_dive.json "survive_tnt_dive.json") | Survive the TnT Depth Charge Dive | win_1_times
Safety ~~First~~ Last | [take_tnt_damage.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/adventuring/take_tnt_damage.json "take_tnt_damage.json") | Take damage from TnT | adventuring_root
Tendril Traveler | [travel_to_tendrils.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/adventuring/travel_to_tendrils.json "travel_to_tendrils.json") | Travel to the end of all nine Level Four tendrils. | open_basalt_door
If a Key Fits... | [use_dm_key.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/adventuring/use_dm_key.json "use_dm_key.json") | Use the Dungeon Master's Key. | open_basalt_door

## Cards

For all advancements related to exploring the card collecting and deck building. When referencing these advancements, use the following naming convention - do2:hidden/cards/*file_name*.

Name | File | Description | Parent
------------- | ------------- | ------------- | -------------
Collect them all! | [cards_root.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/cards/cards_root.json) | Collect and use your very own deck of many things. | root
CONTINUE | 

## Survival

For all advancements related to running the dungeon and getting out in a pinch. When referencing these advancements, use the following naming convention - do2:hidden/survival/*file_name*.

Name | File | Description | Parent
------------- | ------------- | ------------- | -------------
Not Today, Ravager! | [beat_death_gauntlet.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/beat_death_gauntlet.json) | Beat the Death Gauntlet. | win_1_times
Survive the Dungeon! | [survival_root.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/survival_root.json) | Mark your victories as you survive the Dungeon. | root
Decked Out 2 Gamer | [win_100_times.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_100_times.json) | Win 100 games of Decked Out. | win_80_times
Bend and Stretch | [win_10_times.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_10_times.json) | Win 10 games of Decked Out. | win_1_times
Getting Warmed Up | [win_1_times.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_1_times.json) | Win a game of Decked Out. | survival_root
At the Starting Line | [win_20_times.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_20_times.json) | Win 20 games of Decked Out. | win_10_times
Ready, Set, GO! | [win_30_times.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_30_times.json) | Win 30 games of Decked Out. | win_20_times
Pace Yourself | [win_40_times.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_40_times.json) | Win 40 games of Decked Out. | win_30_times
It's Not a Sprint | [win_50_times.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_50_times.json) | Win 50 games of Decked Out. | win_40_times
It's a Marathon! | [win_65_times.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_65_times.json) | Win 65 games of Decked Out. | win_50_times
Run, Hermit, Run! | [win_80_times.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_80_times.json) | Win 80 games of Decked Out. | win_40_times
Is This Easy Mode? | [win_difficulty_1.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_difficulty_1.json) | Win a run on Easy difficulty. | win_1_times
Getting Comfortable | [win_difficulty_2.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_difficulty_2.json) | Win a run on Medium difficulty. | win_difficulty_1
Easier Than Medium? | [win_difficulty_3.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_difficulty_3.json) | Win a run on Hard difficulty. | win_difficulty_2
Not-So-Deadly Mode | [win_difficulty_4.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_difficulty_4.json) | Win a run on Deadly difficulty. | win_difficulty_3
Too Cool for School | [win_difficulty_5.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_difficulty_5.json) | Win a run on Deepfrost difficulty. | win_difficulty_4
Local Delivery | [win_level_1.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_level_1.json) | Survive Level 1: The Frozen Crypt | win_1_times
Cave Champ | [win_level_2.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_level_2.json) | Survive Level 2: The Caves of Carnage | win_level_1
Warden Warden | [win_level_3.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_level_3.json) | Survive Level 3: The Black Mines | win_level_2
Dungeon Globetrotter | [win_level_4.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_level_4.json) | Survive Level 4: The Burning Dark | win_level_3
Double Digits | [win_streak_10.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_streak_10.json) | Win 10 games of Decked Out in a row. | win_streak_7
Three's Lucky | [win_streak_3.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_streak_3.json) | Win 3 games of Decked Out in a row. | win_1_times
Handful of Wins | [win_streak_5.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_streak_5.json) | Win 5 games of Decked Out in a row. | win_streak_3
Perfect Win Streak | [win_streak_7.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/survival/win_streak_7.json) | Win 7 games of Decked Out in a row. | win_streak_5

## Treasure

For all advancements related to exploring the card collecting and deck building. When referencing these advancements, use the following naming convention - do2:hidden/treasure/*file_name*.

Name | File | Description | Parent
------------- | ------------- | ------------- | -------------
Decked Out 2 Treasure! | [treasure_root.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/treasure/treasure_root.json) | Advancements about collecting treasure appear here! | root
CONTINUE | 

## Phases

For all advancements related to exploring the card collecting and deck building. When referencing these advancements, use the following naming convention - do2:hidden/phases/*file_name*.

Name | File | Description | Parent
------------- | ------------- | ------------- | -------------
Decked Out 2 Phases! | [phases_root.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/phases/phases_root.json) | Advancements about the end of phases appear here! | root
CONTINUE | 

## DLC

For all advancements related to exploring the card collecting and deck building. When referencing these advancements, use the following naming convention - do2:hidden/dlc/*file_name*.

Name | File | Description | Parent
------------- | ------------- | ------------- | -------------
Soon™ | [dlc_root.json](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/advancements/visible/dlc/dlc_root.json) | Reserved for potential DLC advancements | root
CONTINUE | 

## *empty* 

Empty is an unused spot that can be used for any future ideas. Its main purpose currently is to enable Decked Out 2 achievements to fill up all 8 tab slots at the top of the page and push Decked Out 1 achievements to below for when they get implemented.

## Credits.

For all advancements related to exploring the card collecting and deck building. Advancements are branched into the various teams that helped in the design of the game. 

Name | Team
------------- | ------------- 
4ply | Infrastructure
Abalue | Datapack/Advancements (me)
AftDawn | Companion Modpack
Bavadin | Dungeon Maintenance 🔧
Finny | DM
FrustratedCPU | Datapack/Advancements
Leethelemur | Dungeon Maintenance 🔧
NOOOOOO | Lobby Design
Rent | Lobby Design
Sandy | Infrastructure
Shadow | Infrastructure/DM
Soikles | Librarian and Keeper of ToTs
Songtronix | Infrastructure
TangoTek | THE ONE AND ONLY
Theta_Line | Artist
Tomzitiger | Web/Marketing

If your name is not on the list or credited incorrectly, dm me @Abalue.

TODO: *Redo some text to be more 'flavorable'*

# Functions

## Advancements

For all functions related to maintaining advancements. This doesn't include granting advancements which are mostly found in the Events section.

### [checks/](https://github.com/trackedout/Brilliance/tree/main/Brilliance%20Datapack/data/do2/functions/advancements/checks)

Utility functions for giving advancements that are based on scores in the scoreboard. 

TODO: *Might not be needed as advancements have the ability to check scoreboards*

### [grant_visible/](https://github.com/trackedout/Brilliance/tree/main/Brilliance%20Datapack/data/do2/functions/advancements/grant_visible)

Minecraft likes to mess with the advancement ordering even after the advancements have been granted. To overcome this we need to manually reorder them ourselves. To do this we have to keep tack of the advancements but be able to revoke and regrant them in the right order. 'Hidden advancements' are the true tracker of players progress whereas 'Visible' are used as the front end advancements the player can see in game. 

Note visible advancements don't show toasts or announce to chat when accomplished since they'll frequently be resetting whereas hidden advancements do.

### [order_tabs](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/functions/advancements/order_tabs.mcfunction "order_tabs.mcfunction")

This function gives the player the root advancement for each tab in a certain order by granting them once per tick. Note, it advancements are received in order but within the same tick Minecraft will still decide to sort the advancements how it wants. To overcome this a series of commands are given in reverse order from how we want to position them with the caveat that they require the following commands to have been executed with conditional statements.

### [reset_threecoursemeal](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/functions/advancements/reset_threecoursemeal.mcfunction "reset_threecoursemeal.mcfunction")

Three course meal is an advancement that you need to do multiple things in one run. Here we reset that progress at the end of the run.

TODO: *Change to be more generic for all advancemenets - i.e. 'reset_per_run'.*

## Events

### [dungeon/](https://github.com/trackedout/Brilliance/tree/main/Brilliance%20Datapack/data/do2/functions/events/dungeon)

Here all events that are related to certain locations in the dungeon are kept. However, this doesn't include major points relating to the core game loop such as entering and exiting the dungeon. The following is a list of the functions and what they do.

Name | Description
------------- | -------------
on_egg_find/ | Triggered when an egg is found in the dungeon.
on_key_submitted/ | Triggered when the various keys in the dungeon are placed in their corresponding containers.
[on_door_bomb](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/functions/events/dungeon/on_door_bomb.mcfunction) | Triggered when the bomb is placed to destroy the door on level 4.
[on_rusty_repair_kit](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/functions/events/dungeon/on_rusty_repair.mcfunction) | Triggered when the player uses a rusty repair kit to fix up Rusty.
CONTINUED...

TODO: *Add command blocks hooked up to the red stone. Move egg conditions to predicates.*

### [systems/](https://github.com/trackedout/Brilliance/tree/main/Brilliance%20Datapack/data/do2/functions/events/systems)

### [on_datapack_load](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/functions/events/on_datapack_load.mcfunction "on_datapack_load.mcfunction")

### [on_game_end](https://github.com/trackedout/Brilliance/blob/main/Brilliance%20Datapack/data/do2/functions/events/on_game_end.mcfunction "on_game_end.mcfunction")

## Scoreboard
 - include list of scoreboard objectives being used.
## General
 - as well as functions, include nbt tags being used.
# Predicates
 - just a table of predicates maybe.
# Other
 - who knows what to put here
