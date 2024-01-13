# - Start Log -
tag @s add scarLogTarget
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=scarLogTarget]"},{"text":" found GoodTimesWithScar's easter egg ("},{"text":"§b§o§nTeleport Me","clickEvent":{"action":"run_command","value":"/tp @s -608 3 1883 -90 9"}},{"text":")"}]
tag @s remove scarLogTarget
# - End Log -

# Set that this player has found the egg.
execute if score @s do2.eggs.scar matches 0 run scoreboard players set @s do2.eggs.scar 1

# Grant "find any egg advancement."
function do2:egg_hunt/found_an_egg

# Make sure rewards are enabled & player hasn't received them
execute if score @s do2.eggs.scar matches 2 run return 0
execute unless score $dungeon do2.config.eggRewards matches 1.. run return 0 
# If Rewards are enabled, AND the player hasn't received the rewards before:
# - Play a barrel open sound
# - Set barrel contents to have the items,
# - Set player to note they HAVE received their rewards
execute if score $dungeon do2.config.eggRewards matches 1 run data modify block -606 4 1884 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 5b, tag: { CustomModelData: 2, tracked:1b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]
execute if score $dungeon do2.config.eggRewards matches 2 run data modify block -606 4 1884 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 5b, tag: { CustomModelData: 2, tracked:1b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]
execute if score $dungeon do2.config.eggRewards matches 3 run data modify block -606 4 1884 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 1b, tag: { CustomModelData: 2, tracked:1b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]

playsound minecraft:block.barrel.open master @s -606 4 1884
scoreboard players set @s do2.eggs.scar 2
