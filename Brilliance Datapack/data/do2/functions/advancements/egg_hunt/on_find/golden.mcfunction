# - Start Log -
tag @s add goldenLogTarget
execute as @a[scores={do2.logs.player_actions=3..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=goldenLogTarget]"},{"text":" found the Golden easter egg ("},{"text":"§b§o§nTeleport Me","clickEvent":{"action":"run_command","value":"/tp @s -643.7 -7 1915 -90 48"}},{"text":")"}]
tag @s remove goldenLogTarget
# - End Log -

# Set that this player has found the egg.
execute unless score @s do2.eggs.gold matches 1.. run scoreboard players set @s do2.eggs.gold 1

# Grant "find any egg advancement."
function do2:advancements/egg_hunt/found_an_egg

# Make sure rewards are enabled & player hasn't received them
execute if score @s do2.eggs.gold matches 2 run return 0
execute unless score $dungeon do2.config.eggRewards matches 1.. run return 0 
# If Rewards are enabled, AND the player hasn't received the rewards before:
# - Play a barrel open sound
# - Set barrel contents to have the items,
# - Set player to note they HAVE received their rewards
execute if score $dungeon do2.config.eggRewards matches 1 run data modify block -643 -9 1915 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 15b, tag: { CustomModelData: 2, tracked:0b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]
execute if score $dungeon do2.config.eggRewards matches 2 run data modify block -643 -9 1915 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 15b, tag: { CustomModelData: 2, tracked:0b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]
execute if score $dungeon do2.config.eggRewards matches 3 run data modify block -643 -9 1915 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 3b, tag: { CustomModelData: 2, tracked:0b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]

playsound minecraft:block.barrel.open master @s -643 -9 1915
scoreboard players set @s do2.eggs.gold 2

# Agronet event
function do2:external/agronet/logs/player_actions/egg_hunt/golden