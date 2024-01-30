# Dungeon Config: how many endermites to spawn in. Default: 2 (2 Endermites spawning)
scoreboard objectives add do2.config.endermiteCount dummy "Endermite Count."
execute unless score $dungeon do2.config.endermiteCount matches 0.. run scoreboard players set $dungeon do2.config.endermiteCount 2

# Dungeon Config: whether to use ravager zones or not. Default: 1 (TRUE)
scoreboard objectives add do2.config.useRavagerZones dummy "Use Zones Lines."
execute unless score $dungeon do2.config.useRavagerZones matches 0.. run scoreboard players set $dungeon do2.config.useRavagerZones 1

# Dungeon Config: whether to use warden zones or not. Default: 1 (TRUE)
scoreboard objectives add do2.config.useWardenZones dummy "Use Zones Lines."
execute unless score $dungeon do2.config.useWardenZones matches 0.. run scoreboard players set $dungeon do2.config.useWardenZones 1

# Dungeon Config: whether to use reset composters every run. Default: 1 (TRUE)
scoreboard objectives add do2.config.resetComposters dummy "Reset Composters."
execute unless score $dungeon do2.config.resetComposters matches 0.. run scoreboard players set $dungeon do2.config.resetComposters 1

# Dungeon Config: whether to disable treasure on max clank. Default: 0 (FALSE)
scoreboard objectives add do2.config.maxClankTreasure dummy "§1Clank §rDisables Treasure."
execute unless score $dungeon do2.config.maxClankTreasure matches 0.. run scoreboard players set $dungeon do2.config.maxClankTreasure 0

# Dungeon Config: Chance for NIGHT time. Default: 25%
scoreboard objectives add do2.config.nightTimeChance dummy "Chance for Night"
execute unless score $dungeon do2.config.nightTimeChance matches 0.. run scoreboard players set $dungeon do2.config.nightTimeChance 25

# Dungeon Config: Vex tracks player. Default: 1 (TRUE)
scoreboard objectives add do2.config.vexTracking dummy "Vex tracks player"
execute unless score $dungeon do2.config.vexTracking matches 0.. run scoreboard players set $dungeon do2.config.vexTracking 1

# Dungeon Config: whether to reward player for finding eggs. Default: 1 (Stick to DO2)
# 0 = nothing
# 1 = DO2 rewards
# 2 = 5/10/15 per level
# 3 = 1/2/3 per level
scoreboard objectives add do2.config.eggRewards dummy "Reward Egg Findings."
execute unless score $dungeon do2.config.eggRewards matches 0.. run scoreboard players set $dungeon do2.config.eggRewards 1

# Dungeon Config: Whether we allow bats to exist on L3 and L4. Default: 1 (TRUE)
scoreboard objectives add do2.config.batDistraction dummy "Bats distract Wardens."
execute unless score $dungeon do2.config.batDistraction matches 0.. run scoreboard players set $dungeon do2.config.batDistraction 1

# Dungeon Config: How fast the datapack should run. Default: 2 (Once every 2 ticks)
scoreboard objectives add do2.config.tickRate dummy "Datapack tick rate."
execute unless score $dungeon do2.config.tickRate matches 0.. run scoreboard players set $dungeon do2.config.tickRate 2
execute unless score $dungeon do2.utility.currentTick matches 0.. run scoreboard players set $dungeon do2.utility.currentTick 0

# Dungeon Config: How many ticks per second.
scoreboard objectives add do2.config.ticksPerSecond dummy "Datapack tick rate."
execute unless score $dungeon do2.config.ticksPerSecond matches 0.. run scoreboard players set $dungeon do2.config.ticksPerSecond 20

# Dungeon Config: Whether to speed up the reset process. Default: 0 (FALSE)
scoreboard objectives add do2.config.fastReset dummy "Fast Dungeon Reset."
execute unless score $dungeon do2.config.fastReset matches 0.. run scoreboard players set $dungeon do2.config.fastReset 0

# Dungeon Config: Whether to speed up the reset process. Default: 0 (FALSE)
scoreboard objectives add do2.config.amountOfBats dummy "Amount of Bats"
execute unless score $dungeon do2.config.amountOfBats matches 0.. run scoreboard players set $dungeon do2.config.amountOfBats 7

# Dungeon Config: Balance Changes
scoreboard objectives add do2.config.bc.snowHazard dummy "Snow Passage Hazard"
execute unless score $dungeon do2.config.bc.snowHazard matches 0.. run scoreboard players set $dungeon do2.config.bc.snowHazard 1
scoreboard objectives add do2.config.bc.l2ShipTreasureLine dummy "Ships Treasure Line"
execute unless score $dungeon do2.config.bc.l2ShipTreasureLine matches 0.. run scoreboard players set $dungeon do2.config.bc.l2ShipTreasureLine 1
scoreboard objectives add do2.config.bc.balancedTnTDiveLoot dummy "Balanced TnT Dive Loot"
execute unless score $dungeon do2.config.bc.balancedTnTDiveLoot matches 0.. run scoreboard players set $dungeon do2.config.bc.balancedTnTDiveLoot 1
scoreboard objectives add do2.config.bc.lessLootMaxClank dummy "Less Loot on Max §1Clank"
execute unless score $dungeon do2.config.bc.lessLootMaxClank matches 0.. run scoreboard players set $dungeon do2.config.bc.lessLootMaxClank 1

# READ/WRITE Config: When to refill dungeon
# 0 = Never automatically.
# 1 = Default values
# 2 = From dropper room
scoreboard objectives add do2.config.refillDungeonType dummy "When to Refill Dungeon"
execute unless score $dungeon do2.config.refillDungeonType matches 0.. run scoreboard players set $dungeon do2.config.refillDungeonType 1
