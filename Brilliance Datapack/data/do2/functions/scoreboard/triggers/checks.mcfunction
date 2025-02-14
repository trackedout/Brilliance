# Cut down on amount of triggers, by making it only a few categories
# - do2.triggers.coop
#   - Show a display depending on whether they are owner or not. (Clear player of all maps when giving it to them)
#   - Display will always include option to get a map.
#   - Owner will have the option to open world up to co-op's joining.
# - do2.triggers.vanilla
#   - Allow player to customize their GUI settings
#   - Or their audio settings.
# - do2.triggers.settings
#   - No display menu, will tp player to settings room.
# - do2.triggers.about
#   - Include options to customize their logs [IF STAFF OR PRACTICE]
#   - Include options to view rules
#   - Include options to view datapack version
#   -

# happens every datapack tick
execute as @a[tag=!do2.fakePlayer] unless entity @s[scores={do2.trigger.about=0}] run function do2:scoreboard/triggers/triggered/about/check
execute as @a[tag=!do2.fakePlayer] unless entity @s[scores={do2.trigger.coop=0}] run function do2:scoreboard/triggers/triggered/coop/check
execute as @a[tag=!do2.fakePlayer] unless entity @s[scores={do2.trigger.settings=0}] run function do2:scoreboard/triggers/triggered/settings/check
execute as @a[tag=!do2.fakePlayer] unless entity @s[scores={do2.trigger.vanilla=0}] run function do2:scoreboard/triggers/triggered/vanilla/check
