scoreboard players reset $Clank_Triggers do2.utility.statsDisplay
scoreboard players reset $Clank_Blocked do2.utility.statsDisplay
scoreboard players reset $Hazard_Triggers do2.utility.statsDisplay
scoreboard players reset $Hazard_Blocked do2.utility.statsDisplay
scoreboard players reset $Treasures_Released do2.utility.statsDisplay
scoreboard players reset $Embers_Released do2.utility.statsDisplay
scoreboard players reset $Porkchops_Found do2.utility.statsDisplay
scoreboard players reset $Coins_Found do2.utility.statsDisplay
scoreboard players reset $Crowns_Found do2.utility.statsDisplay
scoreboard players reset $Rusty_Kits_Found do2.utility.statsDisplay
scoreboard players reset $Pumpkins_Found do2.utility.statsDisplay
scoreboard players reset $Bone_Meal_Found do2.utility.statsDisplay
scoreboard players reset $Sweet_Berries_Found do2.utility.statsDisplay
scoreboard players reset $Glow_Berries_Found do2.utility.statsDisplay

scoreboard players operation $Game_Time do2.utility.statsDisplay = $dungeon do2.run.seconds
execute if score $dungeon do2.run.systems.clank.generated matches 1.. run scoreboard players operation $Clank_Triggers do2.utility.statsDisplay = $dungeon do2.run.systems.clank.generated
execute if score @p[tag=do2.received_shulker] do2.run.systems.clank.blocked matches 1.. run scoreboard players operation $Clank_Blocked do2.utility.statsDisplay = @p[tag=do2.received_shulker] do2.run.systems.clank.blocked
execute if score $dungeon do2.run.systems.hazard.generated matches 1.. run scoreboard players operation $Hazard_Triggers do2.utility.statsDisplay = $dungeon do2.run.systems.hazard.generated
execute if score @p[tag=do2.received_shulker] do2.run.systems.hazard.blocked matches 1.. run scoreboard players operation $Hazard_Blocked do2.utility.statsDisplay = @p[tag=do2.received_shulker] do2.run.systems.hazard.blocked
execute if score $dungeon do2.run.systems.hazard.activated matches 1.. run scoreboard players operation $Hazards_Activated do2.utility.statsDisplay = $dungeon do2.run.systems.hazard.activated
execute if score $dungeon do2.run.systems.treasure.released matches 1.. run scoreboard players operation $Treasures_Released do2.utility.statsDisplay = $dungeon do2.run.systems.treasure.released
execute if score $dungeon do2.run.systems.embers.released matches 1.. run scoreboard players operation $Embers_Released do2.utility.statsDisplay = $dungeon do2.run.systems.embers.released
execute if score @p[tag=do2.received_shulker] do2.run.items.pork_chops matches 1.. run scoreboard players operation $Porkchops_Found do2.utility.statsDisplay = @p[tag=do2.received_shulker] do2.run.items.pork_chops
execute if score @p[tag=do2.received_shulker] do2.run.items.embers matches 1.. run scoreboard players operation $Embers_Found do2.utility.statsDisplay = @p[tag=do2.received_shulker] do2.run.items.embers
execute if score @p[tag=do2.received_shulker] do2.run.items.coins matches 1.. run scoreboard players operation $Coins_Found do2.utility.statsDisplay = @p[tag=do2.received_shulker] do2.run.items.coins
execute if score @p[tag=do2.received_shulker] do2.run.items.crowns matches 1.. run scoreboard players operation $Crowns_Found do2.utility.statsDisplay = @p[tag=do2.received_shulker] do2.run.items.crowns
execute if score @p[tag=do2.received_shulker] do2.run.items.kits matches 1.. run scoreboard players operation $Rusty_Kits_Found do2.utility.statsDisplay = @p[tag=do2.received_shulker] do2.run.items.kits
execute if score @p[tag=do2.received_shulker] do2.run.items.pumpkins matches 1.. run scoreboard players operation $Pumpkins_Found do2.utility.statsDisplay = @p[tag=do2.received_shulker] do2.run.items.pumpkins
execute if score @p[tag=do2.received_shulker] do2.run.items.bone_meal matches 1.. run scoreboard players operation $Bone_Meal_Found do2.utility.statsDisplay = @p[tag=do2.received_shulker] do2.run.items.bone_meal
execute if score @p[tag=do2.received_shulker] do2.run.items.sweet_berries matches 1.. run scoreboard players operation $Sweet_Berries_Found do2.utility.statsDisplay = @p[tag=do2.received_shulker] do2.run.items.sweet_berries
execute if score @p[tag=do2.received_shulker] do2.run.items.glow_berries matches 1.. run scoreboard players operation $Glow_Berries_Found do2.utility.statsDisplay = @p[tag=do2.received_shulker] do2.run.items.glow_berries
