scoreboard players set $seed seeded_random.ticks 0

execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:777}}}] run function seeded_random:display_all
execute as @e[type=shulker,tag=seeded_random.dispenser] unless entity @s[nbt={ActiveEffects:[{Id:24}]}] run tp @s ~ ~-1000 ~
execute as @e[type=shulker,tag=seeded_random.dropper] unless entity @s[nbt={ActiveEffects:[{Id:24}]}] run tp @s ~ ~-1000 ~
execute as @e[type=shulker,tag=seeded_random.dispenser] unless entity @s[nbt={ActiveEffects:[{Id:24}]}] run kill @s
execute as @e[type=shulker,tag=seeded_random.dropper] unless entity @s[nbt={ActiveEffects:[{Id:24}]}] run kill @s
