# Other TODO:
- Use 
- Have datapack use the custom GUI scale buttons. Requires shadow to update resource pack to 0.12.7
- duplicate daveybones?
- fix eat glowberry advancement to require use of bonemeal. (rename it so it resets.)
- Allows right/left to be personalized and not affect EVERYONE (is easy, just x2 of all gui maps)
- config for deck limit.
- Legendaries currently cannot be bought or could be available to be purchased, should this change:
  - Reset scores in player_per_run & dungeon_per_run
  - Create scores in scoreboard/setup/cards
  - Agronet logs cards available don't exist for legendaries
  - cards/available don't exist for legendaries
- When going from zoneless to zoned, Z4 and Z5 ravagers still exist.
  - When random TP is off, ravagers can be in the wrong zones as well, need to force TP when swapping.
- Disentangle weather/daytime cycle configs
- Config to replace 'retired' hermits.
  - Need new artifacts
- On game end, CHECK stat tracking containers. Notify if ever full
  - List of stat containers are in FR reset containers 
  - Check berry/extra item disposal in ravager gauntlet
- Add FR config to completely reset hermit's impact to the dungeon.
- Add INTERFACE for config of number of shop cards always available
- Add is_waxed:1b to all non-clickable signs
  - ```
    * -575 110 2010
    * -511 130 1972
    * -534 138 1980
    * -517 131 1973
    * -534 138 1979
    * -600 156 2032
    * -600 156 2050
    * -532 114 1997
    * -536 114 1997
    * -486 116 1980
    * -554 114 2028 (every single one of the Hermit's cubbies)
    * -492 117 1972 (every single one of our expanded rooms
    ```
- Allow ghosts to spectate their allies in shop freely
- Stats room is missing several features. Needs updating, especially with the new scores.
- Config Info "booklet" needs to be updated with the new force saturation level
  - Go into more detail on the Fresh Runs & Balance Changes in the config book.
- Update Brilliance's main readme.
- Fix on_crown_acquired to not log EVERY crown but instead a total of crowns, once. 
- Fresh runs, reset_stat_containers contains a link to the document. Should the doc be moved to a more permanent location OR as a PDF on tracked out's website URL needs to be adjusted.
- Finish the level interface book.
  - Need Mob Amount & Names implemented.
- Fish markers have same issue as ravager markers, can be duplicated as it takes several ticks to summon markers so it can attempt to summon 99 of them for multiple ticks letting them stack up.
- Have dropper config book have LINKS to each of the dropper categories.
- DM each person on the list of players in the credits tab ask them for a short description/saying/quote for their advancement.
- Check credit list to add ALL players to the credits tab.
- Maybe track card vs natural stats:
  - Hazard
  - Clank
  - Treasure

# Log Todo:
- on_reached_top_tnt_depth_charge
  - Add option for log to let receiver TP to depth charge

# List of things todo AFTER builder's "repair" version is done.
- Add a Tango Easter Egg to the dungeon, and automate it's score.
    - **_(Builders need to hide egg first)_**

## Display:
- SURVIVAL
    - win_streak_3 TO win_streak_10
        - Need better icons.
    - win_1_times TO win_100_times
        - Need icons.
- CARDS
    - buy_extra_card
        - need icon
    - enter_with_cards
        - need icons
- TREASURE
    - end_more_embers_than_artifact
        - Need Icon
## Automation
- craft_1_legendary
    - Don't have data tracking for crafting legendaries yet.

## Legendary automation reminders.
 - Killing tropical fish and glow squid's loot drop is changed. Possibly revert?
 - Disable all recipes, & gamerule dolimitedCrafting true


