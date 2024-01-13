# - Start Log -
tag @s add hypnoLogTarget
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=hypnoLogTarget]"},{"text":" found Hypnotizd's easter egg ("},{"text":"§b§o§nTeleport Me","clickEvent":{"action":"run_command","value":"/tp @s -596 11 2034 0 -13"}},{"text":")"}]
tag @s remove hypnoLogTarget
# - End Log -

# Grant "find any egg advancement."
function do2:egg_hunt/found_an_egg

# Set that this player has found the egg.
execute if score @s do2.eggs.hypno matches 0 run scoreboard players set @s do2.eggs.hypno 1

# Grant "find any egg advancement."
function do2:egg_hunt/found_an_egg

# Make sure rewards are enabled & player hasn't received them
execute if score @s do2.eggs.hypno matches 2 run return 0
execute unless score $dungeon do2.config.eggRewards matches 1.. run return 0 
# If Rewards are enabled, AND the player hasn't received the rewards before:
# - Play a barrel open sound
# - Set barrel contents to have the items,
# - Set player to note they HAVE received their rewards
execute if score $dungeon do2.config.eggRewards matches 1 run data modify block -597 12 2036 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 5b, tag: { CustomModelData: 2, tracked:1b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]
execute if score $dungeon do2.config.eggRewards matches 2 run data modify block -597 12 2036 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 5b, tag: { CustomModelData: 2, tracked:1b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]
execute if score $dungeon do2.config.eggRewards matches 3 run data modify block -597 12 2036 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 1b, tag: { CustomModelData: 2, tracked:1b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]

playsound minecraft:block.barrel.open master @s -597 12 2036
scoreboard players set @s do2.eggs.hypno 2
