scoreboard players set $dungeon do2.config.bc.suitUpRes 1

setblock -555 25 1917 minecraft:stripped_warped_hyphae

setblock -492 3 1942 minecraft:air
setblock -614 -25 1881 minecraft:air
setblock -581 5 1942 minecraft:air
setblock -599 39 1996 minecraft:air
setblock -579 5 2044 minecraft:air
setblock -498 12 2042 minecraft:air

setblock -492 3 1942 minecraft:beacon{Primary:11,Secondary:-1}
setblock -614 -25 1881 minecraft:beacon{Primary:11,Secondary:-1}
setblock -581 5 1942 minecraft:beacon{Primary:11,Secondary:-1}
setblock -599 39 1996 minecraft:beacon{Primary:11,Secondary:-1}
setblock -579 5 2044 minecraft:beacon{Primary:11,Secondary:-1}
setblock -498 12 2042 minecraft:beacon{Primary:11,Secondary:-1}

tellraw @s {"text":"Setting §u§lSuit Up Resistance§r to: §aRes 1"}