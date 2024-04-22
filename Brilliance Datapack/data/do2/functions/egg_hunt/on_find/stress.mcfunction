# - Start Log -
tag @s add stressLogTarget
execute as @a[scores={do2.logs.player_actions=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=stressLogTarget]"},{"text":" found StressMonster101's easter egg ("},{"text":"§b§o§nTeleport Me","clickEvent":{"action":"run_command","value":"/tp @s -551 50 2027 90 8"}},{"text":")"}]
tag @s remove stressLogTarget
# - End Log -

# Set that this player has found the egg.
execute if score @s do2.eggs.stress matches 0 run scoreboard players set @s do2.eggs.stress 1

# Grant "find any egg advancement."
function do2:egg_hunt/found_an_egg

# Make sure rewards are enabled & player hasn't received them
execute if score @s do2.eggs.stress matches 2 run return 0
execute unless score $dungeon do2.config.eggRewards matches 1.. run return 0 
# If Rewards are enabled, AND the player hasn't received the rewards before:
# - Play a barrel open sound
# - Set barrel contents to have the items,
# - Set player to note they HAVE received their rewards
execute if score $dungeon do2.config.eggRewards matches 1 run data modify block -553 49 2027 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 5b, tag: { CustomModelData: 2, tracked:1b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]
execute if score $dungeon do2.config.eggRewards matches 2 run data modify block -553 49 2027 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 5b, tag: { CustomModelData: 2, tracked:1b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]
execute if score $dungeon do2.config.eggRewards matches 3 run data modify block -553 49 2027 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 1b, tag: { CustomModelData: 2, tracked:1b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]

playsound minecraft:block.barrel.open master @s -553 49 2027
scoreboard players set @s do2.eggs.stress 2
