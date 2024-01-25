# - Make sure we don't have duplicates -
kill @e[type=area_effect_cloud,tag=no-zones]
kill @e[type=area_effect_cloud,tag=with-zones]

schedule function do2:dungeon_setup/summon/summon_markers 1t
