# Ignore already tracked items.
execute if entity @s[nbt={Item:{tag:{tracked:1b}}}] run tag @s add tracked
execute if entity @s[nbt={Item:{tag:{tracked:0b}}}] run tag @s add tracked
execute if entity @s[tag=tracked] run return 0

# - WHITELIST -
# Only these items, will get tracked 0b and tracked 1b in their NBT
# Ordered to reduce NBT checks
# 1. Iron nugget
# 2. Iron ingot
# 3. Compasses
# 4. Sweet Berries
# 5. Pumpkins
# 6. Clocks
# 7. Porkchops
# 8. Amethyst_shards
# 9. Bone_meal
# 10. Glow_berries



# - Iron Nugget - (all cards, treasures, and most of DO2)
# Too many CustomModelData ids to track them all, so we AREN'T using CustomModelData for this one.
execute if entity @s[nbt={Item:{id:"minecraft:iron_nugget"}}] run tag @s add tracked
execute if entity @s[tag=tracked] run data merge entity @s {Item:{tag:{tracked:0b}}}
execute if entity @s[tag=tracked] run return 0

# - Iron Ingot - (rusty kits)
# Rusty Kits are the ONLY Iron Ingots that should be tracked.
execute if entity @s[nbt={Item:{id:"minecraft:iron_ingot", tag:{CustomModelData:2}}}] run tag @s add tracked
execute if entity @s[tag=tracked] run data merge entity @s {Item:{tag:{tracked:0b}}}
execute if entity @s[tag=tracked] run return 0

# - Compasses - (for finding lodestones)
# Only TAG it, so lodestones can find it easily.
execute if entity @s[nbt={Item:{id:"minecraft:iron_nugget"}}] run tag @s add tracked
execute if entity @s[tag=tracked] run tag @s add compass
execute if entity @s[tag=tracked] run return 0

# - Sweet Berries - (Obtained by sweet berries bushes)
execute if entity @s[nbt={Item:{id:"minecraft:sweet_berries"}}] run tag @s add tracked
execute if entity @s[tag=tracked] run data merge entity @s {Item:{tag:{tracked:0b}}}
execute if entity @s[tag=tracked] run return 0

# - Pumpkins - (Used for trick/treating)
execute if entity @s[nbt={Item:{id:"minecraft:pumpkin"}}] run tag @s add tracked
execute if entity @s[tag=tracked] run data merge entity @s {Item:{tag:{tracked:0b}}}
execute if entity @s[tag=tracked] run return 0

# - Clocks - (Bdub's artifact)
execute if entity @s[nbt={Item:{id:"minecraft:clock"}}] run tag @s add tracked
execute if entity @s[tag=tracked] run data merge entity @s {Item:{tag:{tracked:0b}}}
execute if entity @s[tag=tracked] run return 0

# - Porkchops - (Given by pork chop power OR by trick/treating)
execute if entity @s[nbt={Item:{id:"minecraft:cooked_porkchop"}}] run tag @s add tracked
execute if entity @s[tag=tracked] run data merge entity @s {Item:{tag:{tracked:0b}}}
execute if entity @s[tag=tracked] run return 0

# - Amethyst Shard - (Used for shard fragments)
execute if entity @s[nbt={Item:{id:"minecraft:amethyst_shard"}}] run tag @s add tracked
execute if entity @s[tag=tracked] run data merge entity @s {Item:{tag:{tracked:0b}}}
execute if entity @s[tag=tracked] run return 0

# - Bone Meal - (Exclusively obtained by composter)
execute if entity @s[nbt={Item:{id:"minecraft:bone_meal"}}] run tag @s add tracked
execute if entity @s[tag=tracked] run data merge entity @s {Item:{tag:{tracked:0b}}}
execute if entity @s[tag=tracked] run return 0

# - Glow Berries - (Exclusively obtained by bone_meal)
execute if entity @s[nbt={Item:{id:"minecraft:glow_berries"}}] run tag @s add tracked
execute if entity @s[tag=tracked] run data merge entity @s {Item:{tag:{tracked:0b}}}
execute if entity @s[tag=tracked] run return 0


# tags to entities, aren't permanent. but do allow items to not be re-checked until player re-drops them.
# so all item entities ALWAYS gets this tag
tag @s add tracked
