# happens when datapack runs scoreboard setup.
# - Start Log -
execute as @a[scores={do2.logs.datapack_setup=2..}] run tellraw @s ["",{"text":"[§9B§r]: Setting up all trigger scoreboard objectives."}]
# - End Log -

scoreboard objectives add do2.trigger.logs trigger "detect logs trigger"
scoreboard players enable @a do2.trigger.logs

scoreboard objectives add do2.trigger.version trigger "detect version trigger"
scoreboard players enable @a do2.trigger.version

scoreboard objectives add do2.trigger.map trigger "detect map trigger"
scoreboard players enable @a do2.trigger.map
