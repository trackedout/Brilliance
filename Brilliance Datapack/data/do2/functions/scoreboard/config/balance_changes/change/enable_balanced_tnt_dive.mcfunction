execute at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1
scoreboard players set $dungeon do2.config.bc.balancedTnTDiveLoot 1
data modify block -578 16 1967 Items set value [{Slot: 0b, id: "minecraft:stone", Count: 1b}, {Slot: 1b, id: "minecraft:stone_sword", Count: 1b}, {Slot: 2b, id: "minecraft:stone_sword", Count: 1b}, {Slot: 3b, id: "minecraft:stone_sword", Count: 1b}]

tellraw @s {"text":"Setting §u§lBalanced TnT Dive's Loot§r to: §aENABLED"}
