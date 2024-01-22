# IDK why this is an event, but it is. So logging it.

# - Start Log -
tag @s add dyingLogTarget
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Yeti Appeared"}]
tag @s add dyingLogTarget
# - End Log -
