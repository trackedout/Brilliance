# Only set tracked out config defaults if onServer
execute unless score $dungeon do2.utility.onServer matches 1 run return 0

scoreboard players set $dungeon do2.config.nightTimeChance 50
scoreboard players set $dungeon do2.config.eggRewards 3
scoreboard players set $dungeon do2.config.useWorldCycle 0
scoreboard players set $dungeon do2.config.mc.controlSummons 0
scoreboard players set $dungeon do2.config.eggsUnlockDeepfrost 1

# Note that we've set the defaults already
scoreboard players set $dungeon do2.utility.setTrackedOutScoreDefaults 1
