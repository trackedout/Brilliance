# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=2..}] run tellraw @s ["",{"text":"[§9B§r]: Testing for Compass Filter Minecart Hoppers."}]
# - End Log -


# Need to check if ONE tag is not existing. Best way I could do this:
scoreboard objectives add do2.tests.all_filters dummy
scoreboard players set $dungeon do2.tests.all_filters 1

execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID01] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID02] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID03] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID04] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID05] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID06] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID07] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID08] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID09] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID10] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID11] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID12] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID13] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID14] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID15] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID16] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID17] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID18] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID19] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID20] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID21] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID22] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID23] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID24] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID25] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID26] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID27] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID28] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID29] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID30] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID31] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID32] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID33] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID34] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID35] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID36] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID37] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID38] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID39] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID40] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID41] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID42] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID43] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID44] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID45] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID46] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID47] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID48] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID49] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID50] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID51] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID52] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID53] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID54] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID55] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID56] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID57] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID58] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID59] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID60] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID61] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID62] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID63] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID64] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID65] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID66] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID67] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID68] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID69] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID70] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID71] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID72] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID73] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID74] run scoreboard players set $dungeon do2.tests.all_
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID69] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID70] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID71] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID72] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID73] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID74] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID75] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID76] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID77] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID78] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID79] run scoreboard players set $dungeon do2.tests.all_filters 0
execute unless entity @e[type=minecraft:hopper_minecart,tag=LODEID80] run scoreboard players set $dungeon do2.tests.all_filters 0

execute unless score $dungeon do2.tests.all_filters matches 1 run function do2:dungeon_setup/reset_hopper_minecarts/tag_minecarts
scoreboard objectives remove do2.tests.all_filters

