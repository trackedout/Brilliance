# Dungeon Config: how many endermites to spawn in. Default: 2 (2 Endermites spawning)
scoreboard objectives add do2.config.endermiteCount dummy "Endermite Count."
execute unless score $dungeon do2.config.endermiteCount matches 0.. run scoreboard players set $dungeon do2.config.endermiteCount 2

# Dungeon Config: whether to disable treasure on max clank. Default: 0 (FALSE)
scoreboard objectives add do2.config.maxClankTreasure dummy "§8Clank §rDisables Treasure."
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
scoreboard objectives add do2.config.ticksPerSecond dummy "Ticks per second."
execute unless score $dungeon do2.config.ticksPerSecond matches 0.. run scoreboard players set $dungeon do2.config.ticksPerSecond 20

# Dungeon Config: Whether to speed up the reset process. Default: 0 (FALSE)
scoreboard objectives add do2.config.fastReset dummy "Fast Dungeon Reset."
execute unless score $dungeon do2.config.fastReset matches 0.. run scoreboard players set $dungeon do2.config.fastReset 0

# Dungeon Config: Amount of bats in the dungeon. Default: 7
scoreboard objectives add do2.config.amountOfBats dummy "Amount of Bats"
execute unless score $dungeon do2.config.amountOfBats matches 0.. run scoreboard players set $dungeon do2.config.amountOfBats 7

# Dungeon Config: Amount of fishes in the dungeon. Default: 10
scoreboard objectives add do2.config.amountOfFish dummy "Amount of Fishes"
execute unless score $dungeon do2.config.amountOfFish matches 0.. run scoreboard players set $dungeon do2.config.amountOfFish 10

# Dungeon Config: Whether to force the player's gamemode. Default: 1 (TRUE)
scoreboard objectives add do2.config.forceGamemode dummy "Force player's gamemode"
execute unless score $dungeon do2.config.forceGamemode matches 0.. run scoreboard players set $dungeon do2.config.forceGamemode 1

# Dungeon Config: Whether to enable day/night and weather cycle. Default: 1 (TRUE)
scoreboard objectives add do2.config.useWorldCycle dummy "Use Day/Night Cycles"
execute unless score $dungeon do2.config.useWorldCycle matches 0.. run scoreboard players set $dungeon do2.config.useWorldCycle 1

# Dungeon Config: Whether to force the player's food level. Default: 1 (TRUE)
scoreboard objectives add do2.config.forceFood dummy "Force player's food"
execute unless score $dungeon do2.config.forceFood matches 0.. run scoreboard players set $dungeon do2.config.forceFood 1
scoreboard objectives add do2.config.targetFoodLevel dummy "What to try to set players's food level to"
execute unless score $dungeon do2.config.targetFoodLevel matches 0.. run scoreboard players set $dungeon do2.config.targetFoodLevel 20
scoreboard objectives add do2.config.targetSaturationLevel dummy "What to try to set players's saturation level to"
execute unless score $dungeon do2.config.targetSaturationLevel matches 0.. run scoreboard players set $dungeon do2.config.targetSaturationLevel 13


# Dungeon Config: Balance Changes
scoreboard objectives add do2.config.bc.snowHazard dummy "Snow Passage Hazard"
execute unless score $dungeon do2.config.bc.snowHazard matches 0.. run scoreboard players set $dungeon do2.config.bc.snowHazard 1
scoreboard objectives add do2.config.bc.l2ShipTreasureLine dummy "Ships Treasure Line"
execute unless score $dungeon do2.config.bc.l2ShipTreasureLine matches 0.. run scoreboard players set $dungeon do2.config.bc.l2ShipTreasureLine 1
scoreboard objectives add do2.config.bc.balancedTnTDiveLoot dummy "Balanced TnT Dive Loot"
execute unless score $dungeon do2.config.bc.balancedTnTDiveLoot matches 0.. run scoreboard players set $dungeon do2.config.bc.balancedTnTDiveLoot 1
scoreboard objectives add do2.config.bc.lessLootMaxClank dummy "Less Loot on Max §8Clank"
execute unless score $dungeon do2.config.bc.lessLootMaxClank matches 0.. run scoreboard players set $dungeon do2.config.bc.lessLootMaxClank 1
scoreboard objectives add do2.config.bc.suitUpRes dummy "Suit Up Resistance"
execute unless score $dungeon do2.config.bc.suitUpRes matches 0.. run scoreboard players set $dungeon do2.config.bc.suitUpRes 0
scoreboard objectives add do2.config.bc.staircaseEmbers dummy "Staircase Embers"
execute unless score $dungeon do2.config.bc.staircaseEmbers matches 0.. run scoreboard players set $dungeon do2.config.bc.staircaseEmbers 0


# Dungeon Config: Fresh Runs
scoreboard objectives add do2.config.fr.teleportKillers dummy "Randomize Killers's Positions"
execute unless score $dungeon do2.config.fr.teleportKillers matches 0.. run scoreboard players set $dungeon do2.config.fr.teleportKillers 1
scoreboard objectives add do2.config.fr.refillBerries dummy "Refill Berry Bushes"
execute unless score $dungeon do2.config.fr.refillBerries matches 0.. run scoreboard players set $dungeon do2.config.fr.refillBerries 1
scoreboard objectives add do2.config.fr.resetComposters dummy "Reset Composters."
execute unless score $dungeon do2.config.fr.resetComposters matches 0.. run scoreboard players set $dungeon do2.config.fr.resetComposters 1
scoreboard objectives add do2.config.fr.cakeGauntlet dummy "Reset Cake at Gauntlet."
execute unless score $dungeon do2.config.fr.cakeGauntlet matches 0.. run scoreboard players set $dungeon do2.config.fr.cakeGauntlet 1


# READ/WRITE Config: When to refill dungeon
# 0 = Never automatically.
# 1 = Default values
# 2 = From dropper room
scoreboard objectives add do2.config.refillDungeonType dummy "When to Refill Dungeon"
execute unless score $dungeon do2.config.refillDungeonType matches 0.. run scoreboard players set $dungeon do2.config.refillDungeonType 1

# Dungeon Config: Mob Controller
scoreboard objectives add do2.config.mc.levelEditing dummy "Which level is currently being edited"
execute unless score $dungeon do2.config.mc.levelEditing matches 0.. run scoreboard players set $dungeon do2.config.mc.levelEditing 1
scoreboard objectives add do2.config.mc.level1Zones dummy "Whether level 1 should have zones"
execute unless score $dungeon do2.config.mc.level1Zones matches 0.. run scoreboard players set $dungeon do2.config.mc.level1Zones 1
scoreboard objectives add do2.config.mc.level2Zones dummy "Whether level 2 should have zones"
execute unless score $dungeon do2.config.mc.level2Zones matches 0.. run scoreboard players set $dungeon do2.config.mc.level2Zones 1
scoreboard objectives add do2.config.mc.level4Zones dummy "Whether level 4 should have zones"
execute unless score $dungeon do2.config.mc.level4Zones matches 0.. run scoreboard players set $dungeon do2.config.mc.level4Zones 1
scoreboard objectives add do2.config.mc.levelZoneMobCount dummy "How many mobs should be in each zone."
execute unless score $l1z1 do2.config.mc.levelZoneMobCount matches 0.. run scoreboard players set $l1z1 do2.config.mc.levelZoneMobCount 1
execute unless score $l1z2 do2.config.mc.levelZoneMobCount matches 0.. run scoreboard players set $l1z2 do2.config.mc.levelZoneMobCount 1
execute unless score $l1z3 do2.config.mc.levelZoneMobCount matches 0.. run scoreboard players set $l1z3 do2.config.mc.levelZoneMobCount 1
execute unless score $l1z4 do2.config.mc.levelZoneMobCount matches 0.. run scoreboard players set $l1z4 do2.config.mc.levelZoneMobCount 1
execute unless score $l1z5 do2.config.mc.levelZoneMobCount matches 0.. run scoreboard players set $l1z5 do2.config.mc.levelZoneMobCount 1
execute unless score $l2z1 do2.config.mc.levelZoneMobCount matches 0.. run scoreboard players set $l2z1 do2.config.mc.levelZoneMobCount 1
execute unless score $l2z2 do2.config.mc.levelZoneMobCount matches 0.. run scoreboard players set $l2z2 do2.config.mc.levelZoneMobCount 1
execute unless score $l2z3 do2.config.mc.levelZoneMobCount matches 0.. run scoreboard players set $l2z3 do2.config.mc.levelZoneMobCount 1
execute unless score $l2z4 do2.config.mc.levelZoneMobCount matches 0.. run scoreboard players set $l2z4 do2.config.mc.levelZoneMobCount 1
execute unless score $l2z5 do2.config.mc.levelZoneMobCount matches 0.. run scoreboard players set $l2z5 do2.config.mc.levelZoneMobCount 1
execute unless score $l3z1 do2.config.mc.levelZoneMobCount matches 0.. run scoreboard players set $l3z1 do2.config.mc.levelZoneMobCount 1
execute unless score $l3z2 do2.config.mc.levelZoneMobCount matches 0.. run scoreboard players set $l3z2 do2.config.mc.levelZoneMobCount 1
execute unless score $l3z3 do2.config.mc.levelZoneMobCount matches 0.. run scoreboard players set $l3z3 do2.config.mc.levelZoneMobCount 1
execute unless score $l4z1 do2.config.mc.levelZoneMobCount matches 0.. run scoreboard players set $l4z1 do2.config.mc.levelZoneMobCount 1
execute unless score $l4z2 do2.config.mc.levelZoneMobCount matches 0.. run scoreboard players set $l4z2 do2.config.mc.levelZoneMobCount 1
execute unless score $l4z3 do2.config.mc.levelZoneMobCount matches 0.. run scoreboard players set $l4z3 do2.config.mc.levelZoneMobCount 1


# Player Config: Player's last used Dungeon Difficulty.
scoreboard objectives add do2.config.dungeonDifficulty dummy "Dungeon Difficulty"
