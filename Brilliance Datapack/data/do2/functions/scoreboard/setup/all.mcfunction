# - Start Log -
execute as @a[scores={do2.logs.dev=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Setting up all scoreboard objectives."}]
# - End Log -

# create scoreboard objectives
# - global -
scoreboard objectives add do2.runs dummy "Total Runs"
scoreboard objectives add do2.wins dummy "Total Wins"
scoreboard objectives add do2.losses dummy "Total Losses"
scoreboard objectives add do2.highest_win_streak dummy "Highest Win Streak"
scoreboard objectives add do2.win_streak dummy "Current Win Streak"
scoreboard objectives add do2.highest_loss_streak dummy "Highest Loss Streak"
scoreboard objectives add do2.loss_streak dummy "Current Loss Streak"

# - treasure lifetimes -
scoreboard objectives add do2.lifetime.pickedup.crowns dummy "Total §eCrowns§r Picked Up"
scoreboard objectives add do2.lifetime.escaped.crowns dummy "Total §eCrowns§r Escaped With"
scoreboard objectives add do2.lifetime.spent.crowns dummy "Total §eCrowns§r Spent"
scoreboard objectives add do2.lifetime.coinsconverted dummy "Total §eCoins§r Converted"
scoreboard objectives add do2.lifetime.pickedup.coins dummy "Total §eCoins§r Converted"
scoreboard objectives add do2.lifetime.pickedup.embers dummy "Total §3Frost Embers§r Picked Up"
scoreboard objectives add do2.lifetime.escaped.embers dummy "Total §3Frost Embers§r Escaped With"
scoreboard objectives add do2.lifetime.spent.embers dummy "Total §3Frost Embers§r Spent"
scoreboard objectives add do2.lifetime.escaped.tomes dummy "Total §eTomes§r Escaped With"
scoreboard objectives add do2.lifetime.spent.tomes dummy "Total §3Tomes§r Spent Or Submitted"

# - per run -
scoreboard objectives add do2.run.active dummy "Game in Play"
scoreboard objectives add do2.run.timeWithNoPlayers dummy "AFK Timer"
scoreboard objectives add do2.run.ticks dummy "Server Tick Counter"
scoreboard objectives add do2.run.seconds dummy "Run Time (seconds)"
scoreboard objectives add do2.run.difficulty dummy "Run Difficulty"
scoreboard objectives add do2.run.has_won dummy "Player has won"
scoreboard objectives add do2.run.has_died deathCount "Whether player has died this run."
scoreboard objectives add do2.run.player_deaths dummy "How many players have died"
scoreboard objectives add do2.run.players dummy "Total players in game"

# - Unique Scores -
scoreboard objectives add do2.depth_charge_success dummy "Total Depth Charge Successes"
scoreboard objectives add do2.run.depth_charge_success dummy "Whether a Depth Charge Success was this run"
scoreboard objectives add do2.run.deepest_floor dummy "Deepest floor player has reach."
scoreboard objectives add do2.run.aritfact_floor dummy "The floor artifact was submitted."
scoreboard objectives add do2.run.artifact_lodestone_id dummy "The id of the lodestone the player submitted to."
scoreboard objectives add do2.run.compass_lodestone_id dummy "The id of the lodestone the player needs to reach."
scoreboard objectives add do2.run.death_dungeon_location dummy "The location of where the player 'died' at"
scoreboard objectives add do2.gauntlet_survival dummy "Total Death Gauntlet Survivals"
scoreboard objectives add do2.run.gauntlet_survival dummy "Whether a Death Gauntlet Survival was this run"

# - Agronet's utility -
scoreboard objectives add do2.agronet.card_available dummy "The card ID of the card available"
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
function do2:scoreboard/setup/cards/cards_available_run
function do2:scoreboard/setup/cards/cards_available_total
function do2:scoreboard/setup/cards/cards_bought_run
function do2:scoreboard/setup/cards/cards_bought_total
function do2:scoreboard/setup/cards/cards_played_run
function do2:scoreboard/setup/cards/cards_played_total
function do2:scoreboard/setup/cards/inside_deck
function do2:scoreboard/setup/cards/cards_price

# - items -
function do2:scoreboard/setup/items

# - Artifacts and Artifakes -
function do2:scoreboard/setup/artifacts_and_fakes/all

# - Triggers -
function do2:scoreboard/triggers/setup

# Agronet event
function do2:external/agronet/logs/dev/scoreboard_setup_all