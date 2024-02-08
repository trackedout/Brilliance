# Teleport them,
execute if entity @s[team=do2.spectators] run tp @s -526 114 1980
execute if entity @s[team=!do2.spectators] run tp @s -550 113 1982

# Proper gamemode
execute unless entity @s[gamemode=survival] unless entity @s[gamemode=adventure] run gamemode adventure

# Reset Team & Tags
team leave @s
tag @s remove do2.running
tag @s remove do2.spectating
tag @s remove do2.ghost
