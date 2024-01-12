# - Start Log -
tag @s add grainLogTarget
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=grainLogTarget]"},{"text":" found Grian's easter egg ("},{"text":"§b§o§nTeleport Me","clickEvent":{"action":"run_command","value":"/tp @s -578.2 -3 1905 -90 5"}},{"text":")"}]
tag @s remove grainLogTarget
# - End Log -

# Set that this player has found the egg.
execute if score @s do2.eggs.grian matches 0 run scoreboard players set @s do2.eggs.grian 1

# If Rewards are enabled, AND the player hasn't received the rewards before:
# - Play a barrel open sound
# - Set barrel contents to have the items,
# - Set player to note they HAVE received their rewards
execute if score $dungeon do2.config.eggRewards matches 1 unless score @s do2.eggs.grian matches 2 run playsound minecraft:block.barrel.open master @s -576 -2 1906
execute if score $dungeon do2.config.eggRewards matches 1 unless score @s do2.eggs.grian matches 2 run data modify block -576 -2 1906 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 15b, tag: { CustomModelData: 2, tracked:1b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]
execute if score $dungeon do2.config.eggRewards matches 1 unless score @s do2.eggs.grian matches 2 run scoreboard players set @s do2.eggs.grian 2

# Grant "find any egg advancement."
function do2:egg_hunt/found_an_egg
