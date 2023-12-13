execute as @s[advancements={do2:visible/credits/credits_root=false,do2:visible/empty/empty_root=true}] run function do2:grant_visible_advancements/grant_visible_advancements

execute as @s[advancements={do2:visible/credits/credits_root=false,do2:visible/empty/empty_root=true}] run advancement grant @s from do2:visible/credits/credits_root
execute as @s[advancements={do2:visible/empty/empty_root=false,do2:visible/dlc/dlc_root=true}] run advancement grant @s only do2:visible/empty/empty_root
execute as @s[advancements={do2:visible/dlc/dlc_root=false,do2:visible/phases/phases_root=true}] run advancement grant @s only do2:visible/dlc/dlc_root
execute as @s[advancements={do2:visible/phases/phases_root=false,do2:visible/treasure/treasure_root=true}] run advancement grant @s only do2:visible/phases/phases_root
execute as @s[advancements={do2:visible/treasure/treasure_root=false,do2:visible/cards/cards_root=true}] run advancement grant @s only do2:visible/treasure/treasure_root
execute as @s[advancements={do2:visible/cards/cards_root=false,do2:visible/survival/survival_root=true}] run advancement grant @s only do2:visible/cards/cards_root
execute as @s[advancements={do2:visible/survival/survival_root=false,do2:visible/adventuring/adventuring_root=true}] run advancement grant @s only do2:visible/survival/survival_root
execute as @s[advancements={do2:visible/adventuring/adventuring_root=false}] run advancement grant @s only do2:visible/adventuring/adventuring_root
