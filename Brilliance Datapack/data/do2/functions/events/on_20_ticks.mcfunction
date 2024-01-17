# Should be once a second, but could be longer depending on TPS

# - Start Log -
execute as @a[scores={do2.utility.logLevel=3..}] run tellraw @s ["",{"text":"[§9B§r]: 20 tick mark. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fEvery §b20 §fticks."}]}},{"text":")"}]
# - End Log -

# Kill TangoCam if no player's are on the server.
execute unless entity @a[name=!tangocam,name=!TangoCam] if entity @a[name=TangoCam] run kill TangoCam
execute unless entity @a[name=!tangocam,name=!TangoCam] if entity @a[name=tangocam] run kill tangocam

# Only do dungeon repair IF: an actual player is loading the dungeon.
execute if score $dungeon do2.utility.dungeonRepair matches 1 positioned -548 41.00 1984 if entity @a[name=!tangocam,name=!TangoCam,distance=..300] run function do2:dungeon_setup/all

# Kill all bats. 0 = all, 1 = L1 & L2
execute if score $dungeon do2.config.batDistraction matches 1 as @e[type=minecraft:bat] at @s unless entity @s[z=1933,dz=-200] run kill @s
execute if score $dungeon do2.config.batDistraction matches 0 as @e[type=minecraft:bat] run kill @s

#Todo: better way to run this only while a player is ON level 2. (Maybe with a scoreboard?)
# Test if cove dripstone is broken.
execute if block -634 28 1992 minecraft:redstone_block run function do2:dungeon_setup/test_for_cove_dripstone

# IF player DOESN'T have the credits tab, set up ALL advancement's roots
execute as @a[advancements={do2:visible/credits/credits_root=false}] run function do2:advancements/order_tabs

# Reveal Markers Control
execute as @a[tag=marker_controller] run function do2:dungeon_setup/teleport_ravagers/dev/controller
# Disable AI for monsters (so we can spot bad light levels)
execute as @e[type=minecraft:zombie] run tag @s add ShouldntSpawn
execute as @e[type=minecraft:spider] run tag @s add ShouldntSpawn
execute as @e[type=minecraft:skeleton] run tag @s add ShouldntSpawn
execute as @e[type=minecraft:enderman] run tag @s add ShouldntSpawn
execute as @e[type=minecraft:creeper] run tag @s add ShouldntSpawn

execute as @e[tag=ShouldntSpawn] run data merge entity @s {NoAI:1b}
execute as @e[tag=ShouldntSpawn] run data merge entity @s {CustomName: '{"text":"Light Levels here let me spawn."}'}
execute as @e[tag=ShouldntSpawn] at @s if entity @p[distance=..20] run effect give @s minecraft:glowing 10 1 true
