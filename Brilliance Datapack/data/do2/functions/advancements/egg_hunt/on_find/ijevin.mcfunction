# - Start Log -
tag @s add jevinLogTarget
execute as @a[scores={do2.logs.player_actions=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=jevinLogTarget]"},{"text":" found iJevin's easter egg ("},{"text":"§b§o§nTeleport Me","clickEvent":{"action":"run_command","value":"/tp @s -565 12 1936 -90 5"}},{"text":")"}]
tag @s remove jevinLogTarget
# - End Log -

# Set that this player has found the egg.
execute unless score @s do2.eggs.jevin matches 1.. run scoreboard players set @s do2.eggs.jevin 1

# Grant "find any egg advancement."
function do2:advancements/egg_hunt/found_an_egg

# Make sure rewards are enabled & player hasn't received them
execute if score @s do2.eggs.jevin matches 2 run return 0
execute unless score $dungeon do2.config.eggRewards matches 1.. run return 0 
# If Rewards are enabled, AND the player hasn't received the rewards before:
# - Play a barrel open sound
# - Set barrel contents to have the items,
# - Set player to note they HAVE received their rewards
execute if score $dungeon do2.config.eggRewards matches 1 run data modify block -563 11 1936 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 10b, tag: { CustomModelData: 2, tracked:0b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]
execute if score $dungeon do2.config.eggRewards matches 2 run data modify block -563 11 1936 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 10b, tag: { CustomModelData: 2, tracked:0b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]
execute if score $dungeon do2.config.eggRewards matches 3 run data modify block -563 11 1936 Items set value [{Slot: 13b, id: "minecraft:iron_nugget", Count: 2b, tag: { CustomModelData: 2, tracked:0b, display: {Name: '{"text":"❄☠ Decked Out Crown ☠❄"}'}}}]

playsound minecraft:block.barrel.open master @s -563 11 1936
scoreboard players set @s do2.eggs.jevin 2

# Agronet event
function do2:external/agronet/logs/player_actions/egg_hunt/ijevin