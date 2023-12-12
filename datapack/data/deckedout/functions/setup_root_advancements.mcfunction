execute as @s[advancements={deckedout:credits/credits_root=false,deckedout:empty/empty_root=true}] run advancement grant @s from deckedout:credits/credits_root
execute as @s[advancements={deckedout:empty/empty_root=false,deckedout:dlc/dlc_root=true}] run advancement grant @s only deckedout:empty/empty_root
execute as @s[advancements={deckedout:dlc/dlc_root=false,deckedout:phases/phases_root=true}] run advancement grant @s only deckedout:dlc/dlc_root
execute as @s[advancements={deckedout:phases/phases_root=false,deckedout:treasure/treasure_root=true}] run advancement grant @s only deckedout:phases/phases_root
execute as @s[advancements={deckedout:treasure/treasure_root=false,deckedout:cards/cards_root=true}] run advancement grant @s only deckedout:treasure/treasure_root
execute as @s[advancements={deckedout:cards/cards_root=false,deckedout:survival/survival_root=true}] run advancement grant @s only deckedout:cards/cards_root
execute as @s[advancements={deckedout:survival/survival_root=false,deckedout:adventuring/adventuring_root=true}] run advancement grant @s only deckedout:survival/survival_root
execute as @s[advancements={deckedout:adventuring/adventuring_root=false}] run advancement grant @s only deckedout:adventuring/adventuring_root
