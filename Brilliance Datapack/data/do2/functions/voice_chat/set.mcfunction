execute as @a run scoreboard players set @s do2.utility.voiceChat 0
execute as @a run function do2:voice_chat/check
execute as @a if score @s do2.utility.voiceChat matches 0 run tag @s add do2.tags.audio.enabled
execute as @a unless score @s do2.utility.voiceChat matches 0 run tag @s remove do2.tags.audio.enabled