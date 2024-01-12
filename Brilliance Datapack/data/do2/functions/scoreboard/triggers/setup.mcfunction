# happens when datapack runs scoreboard setup.
# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Setting up all trigger scoreboard objectives."}]
# - End Log -

scoreboard objectives add do2.trigger.logLevel trigger "detect logLevel trigger"
scoreboard players enable @a do2.trigger.logLevel

scoreboard objectives add do2.trigger.version trigger "detect version trigger"
scoreboard players enable @a do2.trigger.version
