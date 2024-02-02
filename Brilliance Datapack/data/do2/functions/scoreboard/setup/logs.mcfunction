# - Logging -

# Boolean: Receive Notifications on player picking up items
scoreboard objectives add do2.logs.pickups dummy "Receive Logs on Item Pickups"

# Boolean: Receive Notifications on Evokers.
scoreboard objectives add do2.logs.evokers dummy "Receive Logs on EVOKERS."

# Boolean: Receive Notifications on hazard & clank BLOCKAGE.
scoreboard objectives add do2.logs.blockage dummy "Receive Logs on clank or hazard BLOCKED"

# Boolean: Receive Notifications on GAMESTATE.
# - Game loading.
# - Dungeon Difficulty
# - Game Start/End
# - Player's Win/Lose
# - Player Exiting Dungeon
scoreboard objectives add do2.logs.gamestate dummy "Receive Logs on the GAMESTATE."

# Boolean: Receive Notifications on DATAPACK SETUP
# - Datapack being loaded.
# - Player's per run scores setup
# - $dungeon's per run scores setup
# - Scoreboard setup
# - Triggers setup
# - Tagging all Compass Filter Minecart Hoppers.
scoreboard objectives add do2.logs.datapack_setup dummy "Receive Logs of DATAPACK SETUP."

# Boolean: Receive Notifications on DROPPER ROOM
# - Generating Dropper Room
# - Writing TO dungeon from Dropper Room
# - Writing TO Dropper Room from Dungeon
# - Reseting values IN Dropper Room to DEFAULT
scoreboard objectives add do2.logs.dropper_room dummy "Receive Logs of DROPPER ROOM."

# Scale: Receive Notifications on CARDS
# 0 = Nothing
# 1 = Card Available and Card Purchased
# 2 = Card Bought
scoreboard objectives add do2.logs.cards dummy "Receive Logs on §6CARDS§r."

# Scale: Receive Notifications on CLANK
# 0 = Nothing
# 1 = Max Clank Reached
# 2 = Max Clank Reached & Clank Generated
scoreboard objectives add do2.logs.clank dummy "Receive Logs on §1CLANK§r."

# Scale: Receive Notifications on HAZARD.
# 0 = Nothing
# 1 = Hazard Generated
# 2 = Hazard Generated & Hazard Events
scoreboard objectives add do2.logs.hazard dummy "Receive Logs on §cHAZARD§r."

# Scale: Receive Notifications on EMBERS.
# 0 = Nothing
# 1 = Embers Released
# 2 = Embers Released & Embers Dropped
scoreboard objectives add do2.logs.embers dummy "Receive Logs on §3EMBERS§r generated."

# Scale: Receive Notifications on TREASURE.
# 0 = Nothing
# 1 = Treasure Released
# 2 = Treasure Released & Treasure Dropped
scoreboard objectives add do2.logs.treasure dummy "Receive Logs on §eTREASURE§r generated."

# Scale: Receive Notifications on PLAYER-ACTIONS.
# 0 = Nothing
# 1:
# - Compass submitted
# - Repairing rusty
# - Submitting pumpkins.
# - Bomb submitted.
# 2:
# - Key submitted
# - Artifact being converted.
# - Submitting pumpkins, RESULT: Trick
# - Submitting pumpkins, RESULT: Treat
# 3:
# - Notification of a Yeti appearing
# - Notification of player reaching bottom of TnT depth dive
# - Notification of player surviving TnT depth dive
# - Notification of an easter egg being found.
scoreboard objectives add do2.logs.player_actions dummy "Receive Logs on PLAYER'S ACTIONS."

# Scale: Receive Notifications on DUNGEON SETUP
# 0: DISABLED
# 1:
# - Dungeon being set up.
# - Teleporting all killers.
# - Time of day.
# - Setting up balance changes according to configuration.
# 2:
# - Fixing Cove Dripstone.
# - Refilling Droppers.
# - Refilling Berry Bushes
# - RESETTING Compass Filter Minecart Hoppers.
# - Resetting Composters
# - Counting cards inside the deck.
# - Testing for Lodestones and Hopper Minecarts.
# 3:
# - Dungeon summoning TangoCam.
# - Dungeon summoning Other mobs.
# - Dungeon summoning teleport markers.
# - Dungeon summoning 'other' killers
# - Dungeon summoning ravagers
# - Dungeon summoning wardens
# - Dungeon testing for teleport markers
# - Dungeon testing for other killers
# - Dungeon testing for ravagers
# - Dungeon testing for wardens
scoreboard objectives add do2.logs.dungeon_setup dummy "Receive Logs of DATAPACK SETUP."

# Scale: Receive Notifications on SPAM.
# 0 = Nothing
# 1:
# - Player dying.
# - Player joining.
# 2:
# - Ever 20th tick.
# - Datapack ticks.
# - Game ticks.
# - Dungeon testing for cove dripstone
scoreboard objectives add do2.logs.spam dummy "Receive Logs of dungeon SPAM."
