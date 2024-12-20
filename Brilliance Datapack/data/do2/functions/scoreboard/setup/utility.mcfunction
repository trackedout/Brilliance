scoreboard objectives add do2.utility.deathCount deathCount "Check whether player has died."
scoreboard objectives add do2.utility.playerCount dummy "How many players are in the server"
scoreboard objectives add do2.utility.randomNum dummy "Random Number Generator"
scoreboard objectives add do2.utility.randomNumberRange dummy "Limit of how high the random number can go."
scoreboard objectives add do2.utility.currentTick dummy "The current tick number."
scoreboard objectives add do2.utility.checkTick dummy "Used for checking ticks."
scoreboard objectives add do2.utility.advancementOrdering dummy "Boolean on whether the advancements are being revoked and granted per tick."
scoreboard objectives add do2.utility.reachedBottomDepthCharge dummy "Whether player has reached the Bottom of the TnT Depth Charge"
scoreboard objectives add do2.utility.dungeonRepair dummy "Boolean on whether the dungeon is attempting to reload."
scoreboard objectives add do2.utility.currentFishCount dummy "How many fishes are present in the dungeon."
scoreboard objectives add do2.utility.fishVariant dummy "Determines what the variant the fish will be."
scoreboard objectives add do2.utility.gui dummy "Scoreboard used by GUI replacement"
scoreboard objectives add do2.utility.shulkerPlayers dummy "Count amount of players with do2.received_shulker tag"
scoreboard objectives add do2.utility.trackLeaves minecraft.custom:minecraft.leave_game "Player Left Game"
scoreboard objectives add do2.utility.oldGamemode dummy "Player's gamemode when the dungeon started"
scoreboard objectives add do2.utility.old_position.x dummy "Player's X old location"
scoreboard objectives add do2.utility.old_position.y dummy "Player's Y old location"
scoreboard objectives add do2.utility.old_position.z dummy "Player's Z old location"
scoreboard objectives add do2.utility.old_position.temp dummy "Player's old location temp"
scoreboard objectives add do2.utility.floorEmbers dummy "Used to get the player's floor ember"
scoreboard objectives add do2.utility.totalCrowns dummy "Counts player's crowns & coins"
scoreboard objectives add do2.utility.coinsPerCrown dummy "for scoreboard operations"
execute unless score $dungeon do2.utility.coinsPerCrown matches 0.. run scoreboard players set $dungeon do2.utility.coinsPerCrown 4
scoreboard objectives add do2.utility.shouldForceFood dummy "Boolean on whether game is forcing current player's food at the moment."
scoreboard objectives add do2.utility.playersFood food "Tracking player's food levels"
scoreboard objectives add do2.utility.playersSaturation dummy "Tracking player's saturation levels"
scoreboard objectives add do2.run.artifactValue dummy "How many embers the artifact was worth."
scoreboard objectives add do2.utility.statsScreen dummy "What screen the stats are showing right now"
execute unless score $dungeon do2.utility.statsScreen matches 0.. run scoreboard players set $dungeon do2.utility.statsScreen 0
scoreboard objectives add do2.utility.priceChecker dummy "Used to count the price of cards in shops"
scoreboard objectives add do2.utility.receivedJackpot dummy "Used to count the keys in loot boxes to see if Jackpot was won"
scoreboard objectives add do2.utility.playersExperience dummy "Used to count how much experience players have."
scoreboard objectives add do2.utility.onServer dummy "Checking if this Brilliance is loaded on the server"
execute unless score $dungeon do2.utility.onServer matches 0.. run scoreboard players set $dungeon do2.utility.onServer 0
scoreboard objectives add do2.utility.onInstance dummy "Checking if this Brilliance is loaded on an instance"
execute unless score $dungeon do2.utility.onInstance matches 0.. run scoreboard players set $dungeon do2.utility.onInstance 0


# - Mob Controller - (mob_controller)
scoreboard objectives add do2.utility.mc.mobCountCounterTest dummy "Used to count the how many mobs are in a barrel"
scoreboard objectives add do2.utility.mc.mobCountCounterTotal dummy "Used to count the how many mobs are in a barrel"
scoreboard objectives add do2.utility.mc.mobGenerationCount dummy "Used to count how many mobs to generate"
scoreboard objectives add do2.utility.mc.mobGenerationType dummy "Used to tell which mob is being generated."
scoreboard objectives add do2.utility.mc.mobNamesCount dummy "Used to count how many mobs names exist."
scoreboard objectives add do2.utility.mc.collectingLogs dummy "Boolean if collecting warnings from mob controller in order to group them up."


# - Cycle Items utility -
scoreboard objectives add do2.utility.embersToGive dummy "§3Frost Embers§r left to give"
scoreboard objectives add do2.utility.coinsToGive dummy "§eCoins§r left to give"
scoreboard objectives add do2.utility.crownsToGive dummy "§eCrowns§r left to give"
scoreboard objectives add do2.utility.kitsToGive dummy "Rusty Kits left to give"
scoreboard objectives add do2.utility.pumpkinsToGive dummy "Pumpkins left to give"
scoreboard objectives add do2.utility.berriesToGive dummy "Sweet_berries left to give"
scoreboard objectives add do2.utility.bombsToGive dummy "Bombs left to give"
scoreboard objectives add do2.utility.bonemealsToGive dummy "Bone_Meals left to give"
scoreboard objectives add do2.utility.glowberriesToGive dummy "Glow Berries left to give"
scoreboard objectives add do2.utility.chopsToGive dummy "Pork_chops left to give"
scoreboard objectives add do2.utility.key_2ToGive dummy "Level 2 key left to give"
scoreboard objectives add do2.utility.key_3ToGive dummy "Level 3 key left to give"
scoreboard objectives add do2.utility.key_4ToGive dummy "Level 4 key left to give"


# - Voice Chat utility -
scoreboard objectives add do2.utility.voiceChat dummy "Voice Chat installed"
