# - Make sure we don't have duplicates -
kill @e[type=marker,tag=no-zones]
kill @e[type=marker,tag=with-zones]

schedule function do2:dungeon_setup/summon/summon_markers 1t
