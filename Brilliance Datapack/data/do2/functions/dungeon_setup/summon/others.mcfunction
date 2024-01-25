# - Make sure we don't have duplicates -
kill @e[type=minecraft:interaction,tag=lamp_blocker]

schedule function do2:dungeon_setup/summon/summon_others 1t
