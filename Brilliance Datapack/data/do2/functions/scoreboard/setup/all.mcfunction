# - Start Log -
execute as @a[scores={do2.logs.datapack_setup=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Setting up all scoreboard objectives."}]
# - End Log -

# create scoreboard objectives
# - global -
scoreboard objectives add do2.runs dummy "Total Runs"
scoreboard objectives add do2.wins dummy "Total Wins"
scoreboard objectives add do2.losses dummy "Total Losses"
scoreboard objectives add do2.shards dummy "Total Frozen Shards Collected"
scoreboard objectives add do2.crowns dummy "Total §eCrowns§r Collected"
scoreboard objectives add do2.embers dummy "Total §3Frost Embers§r Collected"
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
scoreboard objectives add do2.run.has_died deathCount "Whether player has died this run."
scoreboard objectives add do2.run.player_deaths dummy "How many players have died"
scoreboard objectives add do2.run.players dummy "Total players in game"

# - Agronet's utility -
scoreboard objectives add do2.agronet.card_availible dummy "The card ID of the card availible"
scoreboard objectives add do2.agronet.card_played dummy "The card ID that the dungeon has played"
scoreboard objectives add do2.agronet.card_bought dummy "The card ID of the card the player purchased"

# - Utility -
function do2:scoreboard/setup/advancements
function do2:scoreboard/setup/utility

# - Teams -
function do2:scoreboard/setup/teams

# - Logging -
function do2:scoreboard/setup/logs

# - Dungeon Config -
function do2:scoreboard/setup/config

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

# - Triggers -
function do2:scoreboard/triggers/setup
