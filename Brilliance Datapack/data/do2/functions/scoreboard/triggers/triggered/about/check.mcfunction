# ABOUT section,
# This will have options for logs, rules, or version

execute if score @s do2.trigger.about matches 100..299 run function do2:scoreboard/triggers/triggered/about/logs

# Rules
execute if score @s do2.trigger.about matches 301 run function do2:scoreboard/triggers/triggered/about/rules

# Version
execute if score @s do2.trigger.about matches 302 run function do2:version

# If it's none of the other checks, show display menu.
execute unless score @s do2.trigger.about matches 100..299 unless score @s do2.trigger.about matches 301 unless score @s do2.trigger.about matches 302 run function do2:scoreboard/triggers/triggered/about/display_menu


# Reset about trigger
scoreboard players set @s do2.trigger.about 0
scoreboard players enable @s do2.trigger.about
