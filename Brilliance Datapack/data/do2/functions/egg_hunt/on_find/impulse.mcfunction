# - Start Log -
tag @s add impulseLogTarget
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=impulseLogTarget]"},{"text":" found impulseSV's easter egg ("},{"text":"§b§o§nTeleport Me","clickEvent":{"action":"run_command","value":"/tp @s -537.3 37 2005.76 120 5"}},{"text":")"}]
tag @s remove impulseLogTarget
# - End Log -

# Set that this player has found the egg.
execute if score @s do2.eggs.impulse matches 0 run scoreboard players set @s do2.eggs.impulse 1

# If Rewards are enabled, AND the player hasn't received the rewards before:
# - Play a barrel open sound
# - Set barrel contents to have the items,
# - Set player to note they HAVE received their rewards
execute if score $dungeon do2.config.eggRewards matches 1 unless score @s do2.eggs.impulse matches 2 run playsound minecraft:block.barrel.open master @s -539 36 2004
execute if score $dungeon do2.config.eggRewards matches 1 unless score @s do2.eggs.impulse matches 2 run data modify block -539 36 2004 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 5b, tag: { CustomModelData: 2, tracked:1b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]
execute if score $dungeon do2.config.eggRewards matches 1 unless score @s do2.eggs.impulse matches 2 run scoreboard players set @s do2.eggs.impulse 2

# Grant "find any egg advancement."
function do2:egg_hunt/found_an_egg
