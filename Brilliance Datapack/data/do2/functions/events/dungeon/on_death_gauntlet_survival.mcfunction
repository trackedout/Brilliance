# - Start Log -
tag @s add deathGauntletLogTarget
execute as @a[scores={do2.logs.player_actions=3..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=deathGauntletLogTarget]"},{"text":" survived the death gauntlet."}]
tag @s remove deathGauntletLogTarget
# - End Log -

scoreboard players set @s do2.run.gauntlet_survival 1
scoreboard players add @s do2.lifetime.gauntlet_survival 1
scoreboard players add $dungeon do2.run.gauntlet_survival 1
scoreboard players add $dungeon do2.lifetime.gauntlet_survival 1

# Agronet event
function do2:external/agronet/logs/player_actions/on_death_gauntlet_survival
