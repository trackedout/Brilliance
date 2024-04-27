# Other TODO:
- Automate do2.lifetime.spent.crowns
- Automate do2.lifetime.coinsconverted
- Automate do2.lifetime.escaped.crowns
  - Actually... is this score needed? It's essentially crowns spent + whatever crowns they have on them.
- Automate do2.lifetime.escaped.embers
  - Actually... is this score needed? It's essentially embers spent...
- Fresh runs, reset_stat_containers contains a link to the document. Shou**ld the doc be moved to a more permanent location OR as a PDF on tracked out's website URL needs to be adjusted.
- Go into more detail on the Fresh Runs & Balance Changes in the config book.
- Finish the level interface book.
  - Need Mob Amount & Names implemented.
- Fish markers have same issue as ravager markers, can be duplicated as it takes several ticks to summon markers so it can attempt to summon 99 of them for multiple ticks letting them stack up.
- Check to see if I can change user's cursor upon hovering a CLICKABLE link/bttn
    - Logs buttons
    - Buttons in books
- Add a forceFood config lever.
- Advancements with extra spacing for description visibility ISN'T needed in the /hidden/ versions.
- Have dropper config book have LINKS to each of the dropper categories.
- Maybe have a config that lets the users change daylight/weather cycle.
  - Currently, these are enabled by default.
- Debate adding either `tracked:0b` or `tracked:1b` to egg rewards.
    - `tracked:0b` counts the crowns as floor crowns. Makes it easier to find out total crowns this run.
    - `tracked:1b` counts the crowns as already tracked crowns.
    - **_Currently_**: is `tracked:1b` just so the crowns aren't broken until we discuss this.
- DM each person on the list of players in the credits tab ask them for a short description/saying/quote for their advancement.
- Check credit list to add ALL players to the credits tab.
- Update advancements documentation to include whether the advancement has been tested to work.
    - Add missing advancements to the documentation.
- Move all HERMITCRAFT items from resourcepack/assets/do2 to resourcepack/assets/hermitcraft
- Remove file at "dev/markers/controller.mcfunction" eventually.
- Maybe track card vs natural stats:
  - Hazard
  - Clank
  - Treasure
- Egg Hunter has weird mask as icon. Same with easter bunny.

# Log Todo:
triggered_shrieker
- determine how to log this
  compass_submitted
- Add option for log to let receiver TP to compass spot
  on_reached_top_tnt_depth_charge
- Add option for log to let receiver TP to depth charge
- Log Lock/Unlock settings room.
- Log level interface changes

# List of things todo AFTER builder's "repair" version is done.
- Add Bdub's clock, to be the actual new clock.
  - Update all of the artifact spots that accept the clock
  - Add clock to the item whitelist.
- Update all of the compasses to the new CustomModelData.
- Update all of the compasses filters to the new CustomModelData.
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
    - get_shard_mystery_box & get_shard_random_key
        - Need Icon
    - buy_9_tomes
        - Need Icon
## Automation
- craft_1_legendary
    - Don't have data tracking for crafting legendaries yet.
- lifetime_tomes, lifetime_crowns, lifetime_embers
    - Don't have lifetime totals.
- submit_tomes
    - Don't have tomes submissions.



## Testing Automation
We really need to test every single advancement to make sure they work exactly as how they should.

