# tags to entities, are permanent, but do allow items to not be re-checked until player re-drops them.
tag add @s tracked


# - WHITELIST -
# Only these items, will get tracked 0b and tracked 1b

# Iron Nugget (all cards, treasures, and most of DO2
execute if entity @s[nbt={Item:{tag:{id:"iron_nugget"}}] run data merge entity @s {Item:{tag:{tracked:0b}}}

# Iron Ingot (rusty kits)
execute if entity @s[nbt={Item:{tag:{id:"iron_ingot"}}] run data merge entity @s {Item:{tag:{tracked:0b}}}

# Porkchops (Given by porkchop power OR by trick/treating)
execute if entity @s[nbt={Item:{tag:{id:"cooked_porkchops"}}] run data merge entity @s {Item:{tag:{tracked:0b}}}

# bone_meal (Exclusively obtained by composter)
execute if entity @s[nbt={Item:{tag:{id:"bone_meal"}}] run data merge entity @s {Item:{tag:{tracked:0b}}}

# sweet_berries (Obtained by sweet berries bushes.)
execute if entity @s[nbt={Item:{tag:{id:"sweet_berries"}}] run data merge entity @s {Item:{tag:{tracked:0b}}}
