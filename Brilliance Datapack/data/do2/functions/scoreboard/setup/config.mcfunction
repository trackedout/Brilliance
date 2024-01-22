
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
scoreboard objectives add do2.config.maxClankTreasure dummy "Clank Disables Treasure."
execute unless score $dungeon do2.config.maxClankTreasure matches 0.. run scoreboard players set $dungeon do2.config.maxClankTreasure 0

# Dungeon Config: Chance for NIGHT time Default: 25%
scoreboard objectives add do2.config.nightTimeChance dummy "Chance for Night"
execute unless score $dungeon do2.config.nightTimeChance matches 0.. run scoreboard players set $dungeon do2.config.nightTimeChance 25

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
