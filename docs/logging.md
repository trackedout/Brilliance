# Logging
Brilliance logs almost all interactions with the game, and nearly everything that Brilliance does.
<br>As you can imagine, this is extremely useful for debugging the game. It's easily accessible from the config room inside the dungeon. Alternatively running the command `/trigger do2.trigger.logs` can enable your logs.

Since there is a very **large** amount of available logs, the menu allows you to customize which logs you want to receive, split into categories and then additionally split into levels of priority. You can choose which categories and priority of logs you wish to receive. `1` being highest priority logs  and `0` disabling all logs.

The menu in-game has it's own description of what level of priority will log, but the full completed list is accessible from this table below.<br><br>

|  Log Category  | Level | Description |
|:--------------:|:-----:|-------------|
| datapack_setup | 1 | Notification of when resetting a player |
| datapack_setup | 1 | Notification of when datapack loads |
| datapack_setup | 1 | Notification of when setting up $dungeon for a run |
| datapack_setup | 1 | Notification of when setting up players for a run |
| datapack_setup | 1 | Notification of when setting up spectators for a run |
| gamestate | 1 | Notification of the game loading. |
| gamestate | 1 | Notification of the game starting. |
| gamestate | 1 | Notification of the game's difficulty being chosen. |
| gamestate | 1 | Notification of a player escaping the dungeon. |
| gamestate | 1 | Notification of a player exiting the dungeon. |
| gamestate | 1 | Notification of a player loses. |
| gamestate | 1 | Notification of a player winning. |
| evokers | 1 | Notification of an Evoker activating |
| cards | 1 | Notification of when a card is available for purchase. |
| cards | 1 | Notification of when a card is purchased. |
| cards | 1 | Notification of when a tome is purchased. |
| cards | 2 | Notification of when a card is played. |
| pickups | 1 | Notification of player picking up an "Artifact" |
| pickups | 2 | Notification of player picking up "Bombs" |
| pickups | 2 | Notification of player picking up "Bone Meals" |
| pickups | 2 | Notification of player picking up "Coins" |
| pickups | 2 | Notification of player picking up "Crowns" |
| pickups | 2 | Notification of player picking up "Frost Embers" |
| pickups | 2 | Notification of player picking up "Glow Berries" |
| pickups | 2 | Notification of player picking up "Level 2 Keys" |
| pickups | 2 | Notification of player picking up "Level 3 Keys" |
| pickups | 2 | Notification of player picking up "Level 4 Keys" |
| pickups | 2 | Notification of player picking up "Cooked Porkchops" |
| pickups | 2 | Notification of player picking up "Rusty Repair Kits" |
| pickups | 2 | Notification of player picking up "Sweet Berries" |
| embers | 1 | Notification of Frost Embers added to bomb loot pool. |
| embers | 1 | Notification of Frost Embers sent to dungeon to be dropped. |
| embers | 2 | Notification of Frost Embers attempting to be dropped. |
| embers | 3 | Notification of Frost Embers DROPPER activating |
| treasure | 1 | Notification of Treasure added to bomb loot pool. |
| treasure | 1 | Notification of Treasure sent to dungeon to be dropped. |
| treasure | 2 | Notification of Treasure attempting to be dropped. |
| treasure | 3 | Notification of Treasure DROPPER activating |
| clank | 1 | Notification of an Clank being blocked. |
| clank | 1 | Notification of when Max Clank is reached. |
| clank | 2 | Notification of when Max Clank is surpassed. |
| clank | 2 | Notification of an Clank being generated. |
| clank | 3 | Notification of a Shrieker being activated |
| hazard | 1 | Notification of an Hazard being blocked. |
| hazard | 1 | Notification of an Hazard being generated. |
| hazard | 2 | Notification of an Hazard Locations being activated. |
| hazard | 3 | Notification of an Hazard being attempting to be generated. |
| dropper_room | 1 | Notification of when dropper room is created. |
| dropper_room | 1 | Notification of when dungeon droppers copied to dropper room. |
| dropper_room | 1 | Notification of when resetting dropper room to default. |
| dropper_room | 1 | Notification of when copying from dropper room to Crown Shop. |
| dropper_room | 1 | Notification of when copying from dropper room to Ember Shop. |
| dropper_room | 1 | Notification of when copying from dropper room to Dungeon. |
| dropper_room | 2 | Notification of when resetting Crown Shop to default values. |
| dropper_room | 2 | Notification of when resetting Ember Shop to default values. |
| dropper_room | 2 | Notification of when resetting Dungeon to default values. |
| player_actions | 1 | Notification of when a player submits their compass. |
| player_actions | 1 | Notification of when a player converts coins to a crown. |
| player_actions | 1 | Notification of when a player submits a bomb. |
| player_actions | 1 | Notification of when a player submits a pumpkin. |
| player_actions | 1 | Notification of when a player repairs rusty. |
| player_actions | 2 | Notification of when a player converts an artifact. |
| player_actions | 2 | Notification of when a player gets Tricked. |
| player_actions | 2 | Notification of when a player gets Treated. |
| player_actions | 2 | Notification of when a player submits a DM's key. |
| player_actions | 2 | Notification of when a player submits a floor key. |
| player_actions | 3 | Notification of when a player reaches the bottom of the TnT dive. |
| player_actions | 3 | Notification of when a player returns to the top of the TnT dive. |
| player_actions | 3 | Notification of when a yeti appears. |
| player_actions | 3 | Notification of when a player finds an easter egg. |
| spam | 1 | Notification of a player dying.  |
| spam | 1 | Notification of a player joining.  |
| spam | 1 | Notification of a player respawning.  |
| spam | 2 | Notification of a datapack tick.  |
| spam | 2 | Notification of a once per 20 ticks.  |
| spam | 2 | Notification of a once per 100 ticks.  |
| spam | 2 | Notification of a game tick.  |
| dungeon_setup | 1 | Notification of when dungeon setup starts. |
| dungeon_setup | 1 | Notification of time of day dungeon decided on. |
| dungeon_setup | 1 | Notification of when killers are teleported. |
| dungeon_setup | 1 | Notification of when balance changes are implemented. |
| dungeon_setup | 2 | Notification of when Droppers are refilled. |
| dungeon_setup | 2 | Notification of when Berry Bushes are refilled. |
| dungeon_setup | 2 | Notification of when Compass Minecarts are emptied. |
| dungeon_setup | 2 | Notification of when Cove Dripstone are repaired. |
| dungeon_setup | 2 | Notification of when Composters are reset. |
| dungeon_setup | 2 | Notification of when Cards are counted. |
| dungeon_setup | 2 | Notification of when checking Lodestones existence. |
| dungeon_setup | 3 | Notification of when summoning teleport markers. |
| dungeon_setup | 3 | Notification of when summoning other killers. |
| dungeon_setup | 3 | Notification of when summoning ravagers. |
| dungeon_setup | 3 | Notification of when summoning wardens. |
| dungeon_setup | 3 | Notification of when summoning TangoCam. |
| dungeon_setup | 3 | Notification of when teleport markers are missing. |
| dungeon_setup | 3 | Notification of when other killers are missing. |
| dungeon_setup | 3 | Notification of when ravagers are missing. |
| dungeon_setup | 3 | Notification of when wardens are missing. |
| dungeon_setup | 4 | Notification of when testing for teleport markers. |
| dungeon_setup | 4 | Notification of when testing for other killers. |
| dungeon_setup | 4 | Notification of when testing for ravagers. |
| dungeon_setup | 4 | Notification of when testing for wardens. |
