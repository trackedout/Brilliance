# coop section,
# This will allow owner of worlds to open up their world to co-op play, and get extra maps.

execute if score @s do2.trigger.coop matches 101 run function do2:scoreboard/triggers/triggered/coop/open_coop
execute if score @s do2.trigger.coop matches 102 run function do2:scoreboard/triggers/triggered/coop/give_map

# If it's none of the other checks, show display menu.
execute unless score @s do2.trigger.coop matches 101 unless score @s do2.trigger.coop matches 102 run function do2:scoreboard/triggers/triggered/coop/display_menu


# Reset coop trigger
scoreboard players set @s do2.trigger.coop 0
scoreboard players enable @s do2.trigger.coop
