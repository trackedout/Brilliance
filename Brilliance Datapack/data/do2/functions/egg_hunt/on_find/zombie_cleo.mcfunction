# - Start Log -
tag @s add cleoLogTarget
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=cleoLogTarget]"},{"text":" found ZombieCleo's easter egg ("},{"text":"§b§o§nTeleport Me","clickEvent":{"action":"run_command","value":"/tp @s -631.4 2.5 1920 1.6 0"}},{"text":")"}]
tag @s remove cleoLogTarget
# - End Log -

# Set that this player has found the egg.
execute if score @s do2.eggs.cleo matches 0 run scoreboard players set @s do2.eggs.cleo 1

# If Rewards are enabled, AND the player hasn't received the rewards before:
# - Play a barrel open sound
# - Set barrel contents to have the items,
# - Set player to note they HAVE received their rewards
execute if score $dungeon do2.config.eggRewards matches 1 unless score @s do2.eggs.cleo matches 2 run playsound minecraft:block.barrel.open master @s -633 3 1923
execute if score $dungeon do2.config.eggRewards matches 1 unless score @s do2.eggs.cleo matches 2 run data modify block -633 3 1923 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 15b, tag: { CustomModelData: 2, tracked:1b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]
execute if score $dungeon do2.config.eggRewards matches 1 unless score @s do2.eggs.cleo matches 2 run scoreboard players set @s do2.eggs.cleo 2

# Grant "find any egg advancement."
function do2:egg_hunt/found_an_egg
