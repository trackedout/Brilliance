scoreboard players set $dungeon do2.tests.evokerCount 0
scoreboard players set $dungeon do2.tests.minecartCount 0
execute as @e[type=evoker,distance=..1] run scoreboard players add $dungeon do2.tests.evokerCount 1
execute as @e[type=minecart,distance=..1] run scoreboard players add $dungeon do2.tests.minecartCount 1

# If there is exactly 1 evoker here & 1 minecart, exit testing
execute if score $dungeon do2.tests.evokerCount matches 1 if score $dungeon do2.tests.minecartCount matches 1 run return 0

# - Start Log -
execute as @a[scores={do2.logs.entity_testing=1..}] run tellraw @s ["",{"text":"[§9B§r]: Missing evoker #"},{"storage": "do2:mobs","nbt": "evokerTags","color":"aqua"},{"text":". [§aEC§r] ressummoning it."}]
# - End Log -


# If there is 0 or more than 1 evokers here, kill all evokers in this spot and summon 1 evoker.
kill @e[type=minecart,distance=..1]
kill @e[type=evoker,distance=..1]
summon minecraft:minecart ~ ~ ~ {Invulnerable:1b, Passengers:[{PersistenceRequired:1b, Tags: ["evoker_spot"], id: "minecraft:evoker", Invulnerable: 1b, Health: 24.0f, Silent: 1b,  CustomName: '{"text":"Vexificator"}', CanPickUpLoot: 0b}]}
data modify entity @e[type=evoker,distance=..1,limit=1] Tags append from storage do2:mobs evokerTags
