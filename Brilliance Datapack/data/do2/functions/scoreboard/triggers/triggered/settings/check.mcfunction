# settings section,
function do2:scoreboard/triggers/triggered/settings/am_allowed
execute if score @s do2.utility.canChangeSettings matches 0 run scoreboard players set @s do2.trigger.settings 0
execute if score @s do2.utility.canChangeSettings matches 0 run return 0

# ---- TP TO SETTINGS ROOM ----
execute if score @s do2.trigger.settings matches 1 run tp @s -519 114 1956 90 0

# ---- FRESH RUNS ----
# 2 = Reset Stat Containers buttons.
execute if score @s do2.trigger.settings matches 2 run function do2:scoreboard/config/fresh_runs/change/reset_stat_containers
# 3 & 4 = First Time Finders
execute if score @s do2.trigger.settings matches 3 run function do2:scoreboard/config/fresh_runs/change/disable_first_time_finders
execute if score @s do2.trigger.settings matches 4 run function do2:scoreboard/config/fresh_runs/change/enable_first_time_finders
# 5 & 6 = Randomize Ravager Positions
execute if score @s do2.trigger.settings matches 5 run scoreboard players set $dungeon do2.config.fr.teleportKillers 0
execute if score @s do2.trigger.settings matches 6 run scoreboard players set $dungeon do2.config.fr.teleportKillers 1
# 7 & 8 = Refill Berries
execute if score @s do2.trigger.settings matches 7 run scoreboard players set $dungeon do2.config.fr.refillBerries 0
execute if score @s do2.trigger.settings matches 8 run scoreboard players set $dungeon do2.config.fr.refillBerries 1
# 9 & 10 = Cake Gauntlet
execute if score @s do2.trigger.settings matches 9 run scoreboard players set $dungeon do2.config.fr.cakeGauntlet 0
execute if score @s do2.trigger.settings matches 10 run scoreboard players set $dungeon do2.config.fr.cakeGauntlet 1
# 11 & 12 = Reset Composters
execute if score @s do2.trigger.settings matches 11 run scoreboard players set $dungeon do2.config.fr.resetComposters 0
execute if score @s do2.trigger.settings matches 12 run scoreboard players set $dungeon do2.config.fr.resetComposters 1

# ---- EGG REWARDS ---- (13 - 16)
execute if score @s do2.trigger.settings matches 13 run function do2:scoreboard/config/egg_rewards/level_0
execute if score @s do2.trigger.settings matches 14 run function do2:scoreboard/config/egg_rewards/level_1
execute if score @s do2.trigger.settings matches 15 run function do2:scoreboard/config/egg_rewards/level_2
execute if score @s do2.trigger.settings matches 16 run function do2:scoreboard/config/egg_rewards/level_3

# ---- BALANCE CHANGES ----
# 17 & 18 = Snow Hazard
execute if score @s do2.trigger.settings matches 17 run function do2:scoreboard/config/balance_changes/change/disable_new_snow_hazard
execute if score @s do2.trigger.settings matches 18 run function do2:scoreboard/config/balance_changes/change/enable_new_snow_hazard
# 19 & 20 = Balanced TnT Dive
execute if score @s do2.trigger.settings matches 19 run function do2:scoreboard/config/balance_changes/change/disable_new_snow_hazard
execute if score @s do2.trigger.settings matches 20 run function do2:scoreboard/config/balance_changes/change/enable_new_snow_hazard
# 21 & 22 = Ship Treasure Line
execute if score @s do2.trigger.settings matches 21 run function do2:scoreboard/config/balance_changes/change/disable_ship_treasure_line
execute if score @s do2.trigger.settings matches 22 run function do2:scoreboard/config/balance_changes/change/enable_ship_treasure_line
# 23 & 24 = Less Loot on Max Clank
execute if score @s do2.trigger.settings matches 23 run function do2:scoreboard/config/balance_changes/change/disable_less_loot_max_clank
execute if score @s do2.trigger.settings matches 24 run function do2:scoreboard/config/balance_changes/change/enable_less_loot_max_clank
# 25/26/27 = Suit Up Resistance
execute if score @s do2.trigger.settings matches 25 run function do2:scoreboard/config/balance_changes/change/suit_up_no_res
execute if score @s do2.trigger.settings matches 26 run function do2:scoreboard/config/balance_changes/change/suit_up_res_1
execute if score @s do2.trigger.settings matches 27 run function do2:scoreboard/config/balance_changes/change/suit_up_res_2
# 28 & 29 = Staircase Embers
execute if score @s do2.trigger.settings matches 28 run function do2:scoreboard/config/balance_changes/change/disable_staircase_embers
execute if score @s do2.trigger.settings matches 29 run function do2:scoreboard/config/balance_changes/change/enable_staircase_embers


# Reset settings trigger
scoreboard players set @s do2.trigger.settings 0
scoreboard players enable @s do2.trigger.settings
