# create scoreboard objectives
# - global -
scoreboard objectives add do2.runs dummy "Total Runs"
scoreboard objectives add do2.wins dummy "Total Wins"
scoreboard objectives add do2.shards dummy "Total Frozen Shards Collected"
scoreboard objectives add do2.crowns dummy "Total Crowns Collected"
scoreboard objectives add do2.embers dummy "Total Frost Embers Collected"
scoreboard objectives add do2.highest_streak dummy "Highest Win Streak"
scoreboard objectives add do2.streak dummy "Current Win Streak"

# - per run -
scoreboard objectives add do2.run.active dummy "Game in Play"
scoreboard objectives add do2.run.empty dummy "AFK Timer"
scoreboard objectives add do2.run.deaths deathCount "Total Deaths"
scoreboard objectives add do2.run.ticks dummy "Server Tick Counter"
scoreboard objectives add do2.run.seconds dummy "Run Time (seconds)"
scoreboard objectives add do2.run.difficulty dummy "Run Difficulty"
scoreboard objectives add do2.run.deepest_floor dummy "Deepest floor player has reached."
scoreboard objectives add do2.run.tnt_dive dummy "Reached bottom of the TnT Depth Charge"
scoreboard objectives add do2.run.has_won dummy "Player has won"
scoreboard objectives add do2.run.players dummy "Total players in game"


# - utility -
function do2:scoreboard/setup/advancements
scoreboard objectives add do2.utility.trackLeaves minecraft.custom:minecraft.leave_game "Player Left Game"


# - easter eggs -
function d02:scoreboard/setup/easter_eggs

# - cards -
function d02:scoreboard/setup/cards
