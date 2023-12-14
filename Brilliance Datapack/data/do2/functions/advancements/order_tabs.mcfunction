#Grant all visible advancements on the LAST tick
execute as @s[advancements={do2:visible/credits/credits_root=false,do2:visible/empty/empty_root=true}] run function do2:advancements/grant_visible_advancements

# Attempt to grant advancements from LAST to FIRST, so they fail and wait until next tick to be availible.
# Since this is run while the player DOESN'T have the 'credits' tab, it grants the 'credits' tab FIRST,
# but it will fail UNLESS the 'empty' tab has been granted, which won't be granted unless the 'dlc' tab is granted.
# this continues, with each root failing until the first tab is granted automatically, upon which there is no more lines of code and this function ends
# but since the 'credits' tab wasn't granted this function is ran again NEXT tick.
execute as @s[advancements={do2:visible/credits/credits_root=false,do2:visible/empty/empty_root=true}] run advancement grant @s from do2:visible/credits/credits_root
execute as @s[advancements={do2:visible/empty/empty_root=false,do2:visible/dlc/dlc_root=true}] run advancement grant @s only do2:visible/empty/empty_root
execute as @s[advancements={do2:visible/dlc/dlc_root=false,do2:visible/phases/phases_root=true}] run advancement grant @s only do2:visible/dlc/dlc_root
execute as @s[advancements={do2:visible/phases/phases_root=false,do2:visible/treasure/treasure_root=true}] run advancement grant @s only do2:visible/phases/phases_root
execute as @s[advancements={do2:visible/treasure/treasure_root=false,do2:visible/cards/cards_root=true}] run advancement grant @s only do2:visible/treasure/treasure_root
execute as @s[advancements={do2:visible/cards/cards_root=false,do2:visible/survival/survival_root=true}] run advancement grant @s only do2:visible/cards/cards_root
execute as @s[advancements={do2:visible/survival/survival_root=false,do2:visible/adventuring/adventuring_root=true}] run advancement grant @s only do2:visible/survival/survival_root
execute as @s[advancements={do2:visible/adventuring/adventuring_root=false}] run advancement grant @s only do2:visible/adventuring/adventuring_root
