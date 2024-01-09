# Set that this player has found the egg.
execute if score @s do2.eggs.false matches 0 run scoreboard players set @s do2.eggs.false 1

# If Rewards are enabled, AND the player hasn't received the rewards before:
# - Play a barrel open sound
# - Set barrel contents to have the items,
# - Set player to note they HAVE received their rewards
execute if score $dungeon do2.config.eggRewards matches 1 unless score @s do2.eggs.false matches 2 run playsound minecraft:block.barrel.open master @s -520 46 1956
execute if score $dungeon do2.config.eggRewards matches 1 unless score @s do2.eggs.false matches 2 run data modify block -520 46 1956 Items set value ['{Slot: 13b, id: "minecraft:iron_nugget", Count: 1b, tag: { CustomModelData: 2, display: {Name: \'{"text":"❄☠ Decked Out Crown ☠❄"}\'}}}']
execute if score $dungeon do2.config.eggRewards matches 1 unless score @s do2.eggs.false matches 2 run scoreboard players set @s do2.eggs.false 2

# Grant "find any egg advancement."
function do2:egg_hunt/found_an_egg
