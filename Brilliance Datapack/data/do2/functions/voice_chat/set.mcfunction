scoreboard players set @s do2.utility.voiceChat 0
function do2:voice_chat/check
execute if score @s do2.utility.voiceChat matches 0 run tag @s add do2.tags.audio.enabled
execute unless score @s do2.utility.voiceChat matches 0 run tag @s remove do2.tags.audio.enabled