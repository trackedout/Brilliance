# TODO: only store result if greater than maximum

# embers (replace diamond with ember item)
execute store result score @s do2.run.embers run clear @s diamond 0

# coins (replace gold nugget with coin item)
execute store result score @s do2.run.coins run clear @s gold_nugget 0

# crowns (replace gold ingot with crown item)
execute store result score @s do2.run.crowns run clear @s gold_ingot 0

# rusty repair kits (replace iron ingot with repair kit item)
execute store result score @s do2.run.kits run clear @s iron_ingot 0

# trick-or-treat pumpkins
execute store result score @s do2.run.pumpkins run clear @s pumpkin 0

# any other item we may want to track