# happens when datapack runs scoreboard setup.
# - Start Log -
execute as @a[scores={do2.logs.dev=1..}] run tellraw @s ["",{"text":"[§9B§r]: Setting up all trigger scoreboard objectives."}]
# - End Log -


scoreboard objectives add do2.trigger.about trigger "detect about trigger"
scoreboard players enable @a[tag=!do2.fakePlayer] do2.trigger.about

scoreboard objectives add do2.trigger.coop trigger "detect coop trigger"
scoreboard players enable @a[tag=!do2.fakePlayer] do2.trigger.coop

scoreboard objectives add do2.trigger.settings trigger "detect settings trigger"
scoreboard players enable @a[tag=!do2.fakePlayer] do2.trigger.settings

scoreboard objectives add do2.trigger.vanilla trigger "detect vanilla trigger"
scoreboard players enable @a[tag=!do2.fakePlayer] do2.trigger.vanilla



# Agronet event
function do2:external/agronet/logs/dev/scoreboard_triggers_setup
