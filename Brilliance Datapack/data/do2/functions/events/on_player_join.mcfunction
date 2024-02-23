# - Start Log -
tag @s add joinPlayerLogTarget
execute as @a[scores={do2.logs.spam=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=joinPlayerLogTarget]"},{"text":" joined the game."}]
tag @s remove joinPlayerLogTarget
# - End Log -

scoreboard players set @s do2.utility.trackLeaves 0

advancement revoke @s from do2:visible/credits/credits_root
advancement revoke @s from do2:visible/empty/empty_root
advancement revoke @s from do2:visible/dlc/dlc_root
advancement revoke @s from do2:visible/phases/phases_root
advancement revoke @s from do2:visible/treasure/treasure_root
advancement revoke @s from do2:visible/cards/cards_root
advancement revoke @s from do2:visible/survival/survival_root
advancement revoke @s from do2:visible/adventuring/adventuring_root

execute if score $dungeon do2.run.active matches 1 unless entity @s[tag=do2.running] run function do2:scoreboard/spectator_per_run

function do2:scoreboard/triggers/on_player_join

# If player is at worldspawn when joining
execute positioned -524 103 2167 if entity @s[distance=..10] at @s run tp @s ~ ~ ~ 180 -20
