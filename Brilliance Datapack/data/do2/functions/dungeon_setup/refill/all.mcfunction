# - Start Log -
execute if score $dungeon do2.config.refillDungeonType matches 0 as @a[scores={do2.logs.dungeon_setup=2..}] run tellraw @s ["",{"text":"[§9B§r]: Skipping refilling dungeon droppers."}]
execute if score $dungeon do2.config.refillDungeonType matches 1 as @a[scores={do2.logs.dungeon_setup=2..}] run tellraw @s ["",{"text":"[§9B§r]: Resetting dungeon droppers to default."}]
execute if score $dungeon do2.config.refillDungeonType matches 2 as @a[scores={do2.logs.dungeon_setup=2..}] run tellraw @s ["",{"text":"[§9B§r]: Copying dropper room droppers to dungeon."}]
# - End Log -
execute if score $dungeon do2.config.refillDungeonType matches 1 run function do2:reset_dungeon/commands/reset_dungeon_to_default
execute if score $dungeon do2.config.refillDungeonType matches 2 run function do2:reset_dungeon/commands/write_to_dungeon
execute if score $dungeon do2.config.fr.refillBerries matches 1 run function do2:dungeon_setup/refill/refill_berry_bushes

function do2:dungeon_setup/refill/refill_guppy_geyser
execute unless score $dungeon do2.config.refillDungeonType matches 0 run function do2:dungeon_setup/refill/refill_general
