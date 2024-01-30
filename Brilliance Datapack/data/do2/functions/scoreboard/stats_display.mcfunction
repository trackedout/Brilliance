scoreboard players operation $Game_Time do2.utility.statsDisplay = $dungeon do2.run.seconds
scoreboard players operation $Clank_Triggers do2.utility.statsDisplay = $dungeon do2.run.systems.clank.generated
scoreboard players operation $Clank_Blocked do2.utility.statsDisplay = $dungeon do2.run.systems.clank.blocked
scoreboard players operation $Hazard_Triggers do2.utility.statsDisplay = $dungeon do2.run.systems.hazard.generated
scoreboard players operation $Hazard_Blocked do2.utility.statsDisplay = $dungeon do2.run.systems.hazard.blocked
scoreboard players operation $Hazards_Activated do2.utility.statsDisplay = $dungeon do2.run.systems.hazard.activated
scoreboard players operation $Treasures_Released do2.utility.statsDisplay = $dungeon do2.run.systems.treasure.released
scoreboard players operation $Embers_Released do2.utility.statsDisplay = $dungeon do2.run.systems.embers.released
execute if score @p[tag=shulker_received] do2.run.items.pork_chops matches 1.. run scoreboard players operation $Porkchops_Found do2.utility.statsDisplay = @p[tag=shulker_received] do2.run.items.pork_chops
execute if score @p[tag=shulker_received] do2.run.items.embers matches 1.. run scoreboard players operation $Embers_Found do2.utility.statsDisplay = @p[tag=shulker_received] do2.run.items.embers
execute if score @p[tag=shulker_received] do2.run.items.coins matches 1.. run scoreboard players operation $Coins_Found do2.utility.statsDisplay = @p[tag=shulker_received] do2.run.items.coins
execute if score @p[tag=shulker_received] do2.run.items.crowns matches 1.. run scoreboard players operation $Crowns_Found do2.utility.statsDisplay = @p[tag=shulker_received] do2.run.items.crowns
execute if score @p[tag=shulker_received] do2.run.items.kits matches 1.. run scoreboard players operation $Rusty_Kits_Found do2.utility.statsDisplay = @p[tag=shulker_received] do2.run.items.kits
execute if score @p[tag=shulker_received] do2.run.items.pumpkins matches 1.. run scoreboard players operation $Pumpkins_Found do2.utility.statsDisplay = @p[tag=shulker_received] do2.run.items.pumpkins
execute if score @p[tag=shulker_received] do2.run.items.bone_meal matches 1.. run scoreboard players operation $Bone_Meal_Found do2.utility.statsDisplay = @p[tag=shulker_received] do2.run.items.bone_meal
execute if score @p[tag=shulker_received] do2.run.items.sweet_berries matches 1.. run scoreboard players operation $Sweet_Berries_Found do2.utility.statsDisplay = @p[tag=shulker_received] do2.run.items.sweet_berries
execute if score @p[tag=shulker_received] do2.run.items.glow_berries matches 1.. run scoreboard players operation $Glow_Berries_Found do2.utility.statsDisplay = @p[tag=shulker_received] do2.run.items.glow_berries
