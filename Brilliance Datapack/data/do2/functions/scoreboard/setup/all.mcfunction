# create scoreboard objectives
# - global -
scoreboard objectives add do2.runs dummy "Total Runs"
scoreboard objectives add do2.wins dummy "Total Wins"
scoreboard objectives add do2.losses dummy "Total Losses"
scoreboard objectives add do2.shards dummy "Total Frozen Shards Collected"
scoreboard objectives add do2.crowns dummy "Total Crowns Collected"
scoreboard objectives add do2.embers dummy "Total Frost Embers Collected"
scoreboard objectives add do2.highest_win_streak dummy "Highest Win Streak"
scoreboard objectives add do2.win_streak dummy "Current Win Streak"
scoreboard objectives add do2.highest_loss_streak dummy "Highest Loss Streak"
scoreboard objectives add do2.loss_streak dummy "Current Loss Streak"
scoreboard objectives add do2.depth_charge_success dummy "Total Depth Charge Successes"

# - per run -
scoreboard objectives add do2.run.active dummy "Game in Play"
scoreboard objectives add do2.run.empty dummy "AFK Timer"
scoreboard objectives add do2.run.ticks dummy "Server Tick Counter"
scoreboard objectives add do2.run.seconds dummy "Run Time (seconds)"
scoreboard objectives add do2.run.difficulty dummy "Run Difficulty"
scoreboard objectives add do2.run.deepest_floor dummy "Deepest floor player has reached."
scoreboard objectives add do2.run.has_won dummy "Player has won"
scoreboard objectives add do2.run.has_died deathCount "Whether player has died"
scoreboard objectives add do2.run.player_deaths dummy "How many players have died"
scoreboard objectives add do2.run.players dummy "Total players in game"

# - utility -
function do2:scoreboard/setup/advancements
scoreboard objectives add do2.utility.trackLeaves minecraft.custom:minecraft.leave_game "Player Left Game"
scoreboard objectives add do2.utility.embersToGive dummy "Frost Embers left to give"
scoreboard objectives add do2.utility.coinsToGive dummy "Coins left to give"
scoreboard objectives add do2.utility.crownsToGive dummy "Crowns left to give"
scoreboard objectives add do2.utility.kitsToGive dummy "Rusty Kits left to give"
scoreboard objectives add do2.utility.pumpkinsToGive dummy "Pumpkins left to give"
scoreboard objectives add do2.utility.berriesToGive dummy "Sweet_berries left to give"
scoreboard objectives add do2.utility.chopsToGive dummy "Pork_chops left to give"
scoreboard objectives add do2.utility.key_2ToGive dummy "Level 2 key left to give"
scoreboard objectives add do2.utility.key_3ToGive dummy "Level 3 key left to give"
scoreboard objectives add do2.utility.key_4ToGive dummy "Level 4 key left to give"
# for dungeon setup, whether to use zones or not.
scoreboard objectives add do2.utility.useZones dummy "Use Ravager Zones."
scoreboard players set $dungeon do2.utility.useZones 1

# - systems -
function do2:scoreboard/setup/systems

# - easter eggs -
function do2:scoreboard/setup/easter_eggs

# - cards -
function do2:scoreboard/setup/cards/cards_availible
function do2:scoreboard/setup/cards/cards_bought
function do2:scoreboard/setup/cards/cards_bought_total
function do2:scoreboard/setup/cards/cards_played
function do2:scoreboard/setup/cards/inside_deck

# - items -
function do2:scoreboard/setup/items

# - Artifacts and Artifakes -
function do2:scoreboard/setup/artifacts_and_fakes/all
