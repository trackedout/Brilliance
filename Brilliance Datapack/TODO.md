# Other TODO:
- On datapack update to v0.8.6 or later, remove OLD egg rewards config
- Update all area_effect_clouds to minecraft:marker
- separate config for ravager zones and warden zones
- Log artifact pick-ups. 
- Reset compass filter hopper minecarts
- Reset composter level. Config maybe?
- Auto summon axolotls
- add /summon minecraft:interaction -559 113.95 1987.45 {width: 5.1, height: 1.1} during dungeon repair
- remove dungeon repair on datapack load, or modify it to not summon.
- figure out where to set world spawn in instances, or whether Infra will deal with that.
- Debate adding either `tracked:0b` or `tracked:1b` to egg rewards.
    - `tracked:0b` counts the crowns as floor crowns. Makes it easier to find out total crowns this run.
    - `tracked:1b` counts the crowns as already tracked crowns.
    - **_Currently_**: is `tracked:1b` just so the crowns aren't broken until we discuss this.
- DM each person on the list of players in the credits tab ask them for a short description/saying/quote for their advancement.
- Check credit list to add ALL players to the credits tab.
- Add a Tango Easter Egg to the dungeon, and automate it's score.
    - **_(Builders need to hide egg first)_**
- Update advancements documentation to include whether the advancement has been tested to work.
    - Add missing advancements to the documentation.
# List of unfinished things in the advancements that are here.

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

