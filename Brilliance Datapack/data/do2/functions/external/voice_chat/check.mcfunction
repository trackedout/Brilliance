execute unless entity @s run return 0
scoreboard players set @s do2.utility.voiceChat 0
execute store result score @s do2.utility.voiceChat as @s run voicechat help
