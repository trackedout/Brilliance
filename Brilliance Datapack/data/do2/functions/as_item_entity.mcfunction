# tags to entities, aren't permanent. but do allow items to not be re-checked until player re-drops them.
tag @s add tracked

# Ignore already tracked items.
execute if entity @s[nbt={Item:{tag:{tracked:1b}}}] run return 0


# - WHITELIST -
# Only these items, will get tracked 0b and tracked 1b

# Iron Nugget (all cards, treasures, and most of DO2.
# Too many CustomModelData ids to track them all, so we AREN'T using CustomModelData for this one.
execute if entity @s[nbt={Item:{id:"minecraft:iron_nugget"}}] run data merge entity @s {Item:{tag:{tracked:0b}}}

# Iron Ingot (rusty kits)
# Rusty Kits are the ONLY Iron Ingots that should be tracked.
execute if entity @s[nbt={Item:{id:"minecraft:iron_ingot", CustomModelData:2}}] run data merge entity @s {Item:{tag:{tracked:0b}}}

# Porkchops (Given by porkchop power OR by trick/treating)
execute if entity @s[nbt={Item:{id:"minecraft:cooked_porkchops"}}] run data merge entity @s {Item:{tag:{tracked:0b}}}

# Pumpkins (Used for trick/treating)
execute if entity @s[nbt={Item:{id:"minecraft:carved_pumpkin"}}] run data merge entity @s {Item:{tag:{tracked:0b}}}

# bone_meal (Exclusively obtained by composter)
execute if entity @s[nbt={Item:{id:"minecraft:bone_meal"}}] run data merge entity @s {Item:{tag:{tracked:0b}}}

# sweet_berries (Obtained by sweet berries bushes)
execute if entity @s[nbt={Item:{id:"minecraft:sweet_berries"}}] run data merge entity @s {Item:{tag:{tracked:0b}}}
