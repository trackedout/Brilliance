# - Make sure we don't have duplicates -
kill @e[type=minecraft:interaction,tag=lamp_blocker]
kill @e[type=minecraft:interaction,tag=as_blocker]
kill @e[type=minecraft:interaction,tag=hopper_blocker]
kill @e[type=minecraft:interaction,tag=water_blocker]
kill @e[type=minecraft:interaction,tag=lava_blocker]
kill @e[type=minecraft:interaction,tag=parrot_blocker]
kill @e[type=minecraft:interaction,tag=dropper_blocker]
kill @e[type=minecraft:interaction,tag=trapdoor_blocker]

schedule function do2:dungeon_setup/summon/summon_others 3t append
