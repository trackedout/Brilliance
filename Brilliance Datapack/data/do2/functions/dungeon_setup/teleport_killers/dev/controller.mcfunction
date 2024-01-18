
# L1Z1 = red
# L1Z2 = green
# L1Z3 = gold
# L1Z4 = gray
# L1Z5 = light_purple
#
# L2Z1 = dark_aqua
# L2Z2 = yellow
# L2Z3 = dark_blue
# L2Z4 = dark_red
# L2Z5 = black
#
# L3Z1 = dark_green
# L3Z3 = dark_gray
# L3Z3 = blue
#
# L4Z1 = dark_purple
# L4Z3 = white
# L4Z3 = aqua

# - LEVEL 1 -
# L1Z1
execute if block -625 57 2020 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L1Z1] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l1z1
execute if block -625 57 2020 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L1Z1] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l1z1
# L1Z2
execute if block -625 57 2019 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L1Z2] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l1z2
execute if block -625 57 2019 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L1Z2] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l1z2
# L1Z3
execute if block -625 57 2018 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L1Z3] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l1z4
execute if block -625 57 2018 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L1Z3] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l1z3
# L1Z4
execute if block -625 57 2017 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L1Z4] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l1z4
execute if block -625 57 2017 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L1Z4] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l1z4
# L1Z5
execute if block -625 57 2016 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L1Z5] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l1z5
execute if block -625 57 2016 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L1Z5] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l1z5

# - LEVEL 2 -
# L2Z1
execute if block -625 57 2014 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L2Z1] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l2z1
execute if block -625 57 2014 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L2Z1] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l2z1
# L2Z2
execute if block -625 57 2013 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L2Z2] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l2z2
execute if block -625 57 2013 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L2Z2] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l2z2
# L2Z3
execute if block -625 57 2012 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L2Z3] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l2z3
execute if block -625 57 2012 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L2Z3] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l2z3
# L2Z4
execute if block -625 57 2011 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L2Z4] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l2z4
execute if block -625 57 2011 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L2Z4] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l2z4
# L2Z5
execute if block -625 57 2010 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L2Z5] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l2z5
execute if block -625 57 2010 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L2Z5] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l2z5
# L2WILLY
execute if block -625 57 2009 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L2WILLY] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l2willy
execute if block -625 57 2009 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L2WILLY] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l2willy

# - LEVEL 3 -
# L3Z1
execute if block -625 57 2007 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L3Z1] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l3z1
execute if block -625 57 2007 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L3Z1] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l3z1
# L3Z2
execute if block -625 57 2006 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L3Z2] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l3z2
execute if block -625 57 2006 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L3Z2] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l3z2
# L3Z3
execute if block -625 57 2005 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L3Z3] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l3z3
execute if block -625 57 2005 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L3Z3] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l3z3

# - LEVEL 4 -
# L4Z1
execute if block -625 57 2003 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L4Z1] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l4z1
execute if block -625 57 2003 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L4Z1] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l4z1
# L4Z2
execute if block -625 57 2002 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L4Z2] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l4z2
execute if block -625 57 2002 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L4Z2] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l4z2
# L4Z3
execute if block -625 57 2001 minecraft:lever[powered=true] as @e[type=area_effect_cloud,tag=L4Z3] unless entity @s[tag=frustrated_visible] at @s run function do2:dungeon_setup/teleport_killers/dev/turn_visible/l4z3
execute if block -625 57 2001 minecraft:lever[powered=false] if entity @s[tag=frustrated_visible,tag=L4Z3] run function do2:dungeon_setup/teleport_killers/dev/turn_invisible/l4z3
