# Dungeon Config: whether to disable treasure on max clank.
scoreboard objectives add do2.config.maxClankTreasure dummy "§8Clank §rDisables Treasure."

# Dungeon Config: Chance for NIGHT time.
scoreboard objectives add do2.config.nightTimeChance dummy "Chance for Night"

# Dungeon Config: Vex tracks player.
scoreboard objectives add do2.config.vexTracking dummy "Vex tracks player"

# Dungeon Config: whether to reward player for finding eggs.
# 0 = nothing
# 1 = DO2 rewards
# 2 = 5/10/15 per level
# 3 = 1/2/3 per level
scoreboard objectives add do2.config.eggRewards dummy "Reward Egg Findings."

# Dungeon Config: How fast the datapack should run.
scoreboard objectives add do2.config.tickRate dummy "Datapack tick rate."

# Dungeon Config: How many ticks per second.
scoreboard objectives add do2.config.ticksPerSecond dummy "Ticks per second."

# Dungeon Config: Whether to speed up the reset process.
scoreboard objectives add do2.config.fastReset dummy "Fast Dungeon Reset."

# Dungeon Config: Amount of bats in the dungeon.
scoreboard objectives add do2.config.amountOfBats dummy "Amount of Bats"

# Dungeon Config: Amount of cards always available to purchase.
scoreboard objectives add do2.config.cardsAlwaysAvailable dummy "Amount of cards always available to purchase"

# Dungeon Config: Amount of fishes in the dungeon.
scoreboard objectives add do2.config.amountOfFish dummy "Amount of Fishes"

# Dungeon Config: Whether to force the player's gamemode.
scoreboard objectives add do2.config.forceGamemode dummy "Force player's gamemode"

# Dungeon Config: Whether to enable day/night and weather cycle.
scoreboard objectives add do2.config.useDaylightCycle dummy "Use Day/Night Cycles"
scoreboard objectives add do2.config.useWeatherCycle dummy "Use Weather Cycles"

# Dungeon Config: Whether to force the player's food level.
scoreboard objectives add do2.config.forceFood dummy "Force player's food"
scoreboard objectives add do2.config.targetFoodLevel dummy "What to try to set players's food level to"
scoreboard objectives add do2.config.targetSaturationLevel dummy "What to try to set players's saturation level to"

# Dungeon Config: Whether to force egg findings for deepfrost difficulty.
scoreboard objectives add do2.config.eggsUnlockDeepfrost dummy "Eggs unlock deepfrost"

# Dungeon Config: Balance Changes
scoreboard objectives add do2.config.bc.snowHazard dummy "Snow Passage Hazard"
scoreboard objectives add do2.config.bc.l2ShipTreasureLine dummy "Ships Treasure Line"
scoreboard objectives add do2.config.bc.balancedTnTDiveLoot dummy "Balanced TnT Dive Loot"
scoreboard objectives add do2.config.bc.lessLootMaxClank dummy "Less Loot on Max §8Clank"
scoreboard objectives add do2.config.bc.suitUpRes dummy "Suit Up Resistance"
scoreboard objectives add do2.config.bc.staircaseEmbers dummy "Staircase Embers"


# Dungeon Config: Fresh Runs
scoreboard objectives add do2.config.fr.teleportKillers dummy "Randomize Killers' Positions"
scoreboard objectives add do2.config.fr.refillBerries dummy "Refill Berry Bushes"
scoreboard objectives add do2.config.fr.resetComposters dummy "Reset Composters."
scoreboard objectives add do2.config.fr.cakeGauntlet dummy "Reset Cake at Gauntlet."


# READ/WRITE Config: When to refill dungeon
# 0 = Never automatically.
# 1 = Default values
# 2 = From dropper room
scoreboard objectives add do2.config.refillDungeonType dummy "When to Refill Dungeon"

# Dungeon Config: Mob Controller
scoreboard objectives add do2.config.ec.levelEditing dummy "Which level is currently being edited"
scoreboard objectives add do2.config.ec.level1Zones dummy "Whether level 1 should have zones"
scoreboard objectives add do2.config.ec.level2Zones dummy "Whether level 2 should have zones"
scoreboard objectives add do2.config.ec.level4Zones dummy "Whether level 4 should have zones"
scoreboard objectives add do2.config.ec.levelZoneMobCount dummy "How many mobs should be in each zone."


# Dungeon Config: Experimental (newEvokers currently unused)
scoreboard objectives add do2.config.newEvokers dummy "Whether to enable Tracked Out exclusive evoker spots"
scoreboard objectives add do2.config.maxClankBerries dummy "Whether to allow berries to grow after max clank has been reached"


# Player Config: Player's last used Dungeon Difficulty.
scoreboard objectives add do2.config.dungeonDifficulty dummy "Dungeon Difficulty"

# ================
# - SET DEFAULTS -
# ================
execute unless score $dungeon do2.utility.setNormalScoreDefaults matches 1 run function do2:scoreboard/setup/config_defaults
execute unless score $dungeon do2.utility.setTrackedOutScoreDefaults matches 1 run schedule function do2:external/tracked_out/tracked_out_config_defaults 2t append
