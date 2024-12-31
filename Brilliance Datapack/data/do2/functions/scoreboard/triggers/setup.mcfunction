# happens when datapack runs scoreboard setup.
# - Start Log -
execute as @a[scores={do2.logs.dev=1..}] run tellraw @s ["",{"text":"[§9B§r]: Setting up all trigger scoreboard objectives."}]
# - End Log -

scoreboard objectives add do2.trigger.logs trigger "detect logs trigger"
scoreboard players enable @a[tag=do2.staff] do2.trigger.logs

scoreboard objectives add do2.trigger.version trigger "detect version trigger"
scoreboard players enable @a do2.trigger.version

scoreboard objectives add do2.trigger.map trigger "detect map trigger"
scoreboard players enable @a do2.trigger.map

scoreboard objectives add do2.trigger.playsound trigger "detect playsound trigger"
scoreboard players enable @a do2.trigger.playsound

scoreboard objectives add do2.trigger.gui trigger "detect gui trigger"
scoreboard players enable @a do2.trigger.gui

scoreboard objectives add do2.trigger.silenceWardens trigger "detect silenceWardens trigger"
#scoreboard players enable @a[team=do2.players] do2.trigger.silenceWardens
