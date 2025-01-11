# Other TODO:
- automate filling in the extra criteria from 
 - visible/lifetime_X_crowns/embers
- Issue with advancement run_too_long
- Key Advancements need to check if they are during the first 30s.
- Currently compass submission just checks for deepest floor reached and assumes that was where your artifact was from. Should individualize artifact submission events to detect where player submitted artifact.
  - Could hack, and check player's location ON artifact submission, but best if individualized.
- Add is_waxed:1b to all non-clickable signs
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
  * -492 117 1972 (every single one of our expanded rooms)
- do2.config.fr.teleportKillers isn't used in new system and needs to be updated todo so.
- Allow ghosts to spectate their allies in shop freely.
- DavyBones & Mites need to be moved to entity_controller
- Stats room is missing several features. Needs updating, especially with the new scores.
- Fish markers needs to be controlled from backrooms
- Check for TOO MANY mobs to correct them.
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
triggered_shrieker
- determine how to log this
  compass_submitted
- Add option for log to let receiver TP to compass spot
  on_reached_top_tnt_depth_charge
- Add option for log to let receiver TP to depth charge
- Log Lock/Unlock settings room.

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
    - buy_9_tomes
        - Need Icon
## Automation
- craft_1_legendary
    - Don't have data tracking for crafting legendaries yet.




