# Should be once a second, but could be longer depending on TPS

# - Start Log -
execute as @a[scores={do2.logs.spam=2..}] run tellraw @s ["",{"text":"§f[§9B§r]: Running a 20 tick mark. "}]
# - End Log -

# Kill TangoCam if no player's are on the server.
execute unless entity @a[tag=!do2.fakePlayer] if entity @a[name=TangoCam,tag=do2.afterPlayerJoin] run kill TangoCam
execute unless entity @a[tag=!do2.fakePlayer] if entity @a[name=tangocam,tag=do2.afterPlayerJoin] run kill tangocam

# Only do dungeon repair IF: an actual player is loading the dungeon.
execute if score $dungeon do2.utility.dungeonRepair matches 1 positioned -548 41.00 1984 if entity @a[tag=!do2.fakePlayer,distance=..300] run function do2:dungeon_setup/all

# Kill all bats. 0 = all, 1 = L1 & L2
execute if score $dungeon do2.config.batDistraction matches 1 as @e[type=minecraft:bat,tag=!mobcap] at @s unless entity @s[z=1933,dz=-200] run tp @s ~ -200 ~
execute if score $dungeon do2.config.batDistraction matches 0 as @e[type=minecraft:bat,tag=!mobcap] at @s run tp @s ~ -200 ~
# Ensure correct bat count for L3 & L4
execute if score $dungeon do2.config.batDistraction matches 1 if score $dungeon do2.config.amountOfBats matches 1.. run function do2:entity_controller/ensure_bat_count
# Ensure correct glow squids
function do2:entity_controller/ensure_glow_squid_count
# Ensure correct fish counts
function do2:entity_controller/ensure_fish_count

# Kill all not allowed mobs.
function do2:entity_controller/kill_bad_mobs

# Figure out where players are
execute as @a[tag=!do2.fakePlayer,team=do2.players] at @s run function do2:utility/locate_player

# Run any "area specific" actions
function do2:utility/per_level_actions

# IF player DOESN'T have the credits tab, set up ALL advancement's roots
execute as @a[advancements={do2:visible/credits/credits_root=false}] run function do2:advancements/order_tabs

# Update GUI
function do2:vanilla_compatability/gui/collect_values/update_scoreboard
function do2:vanilla_compatability/gui/update_has_map_tag/invoke_update

# Lock/Unlock Settings room
execute unless score $dungeon do2.utility.lockConfigRoom matches 1..2 run function do2:scoreboard/config/config_unlock
execute if score $dungeon do2.utility.lockConfigRoom matches 1 run function do2:scoreboard/config/config_lock
execute if score $dungeon do2.utility.lockConfigRoom matches 2 run function do2:scoreboard/config/config_lock_inverse


# Attempt every 5 second updates:
scoreboard players set $dungeon do2.utility.checkTick 5
scoreboard players operation $five_seconds do2.config.ticksPerSecond = $dungeon do2.config.ticksPerSecond
scoreboard players operation $five_seconds do2.config.ticksPerSecond *= $dungeon do2.utility.checkTick
scoreboard players operation $dungeon_five do2.utility.checkTick = $dungeon do2.utility.currentTick
scoreboard players operation $dungeon_five do2.utility.checkTick %= $five_seconds do2.config.ticksPerSecond
execute if score $dungeon_five do2.utility.checkTick matches 0 run function do2:events/on_100_ticks

# Agronet event
execute as @a[team=do2.players] run function do2:external/agronet/logs/spam/on_20_ticks
