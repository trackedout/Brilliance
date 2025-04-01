scoreboard players set @s seeded_random.wand_right_click_detection 0
advancement revoke @s only seeded_random:utility/wand_right_click_detection
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:777}}}] run return 0
execute as @s at @s run function seeded_random:raycast/start
schedule function seeded_random:utility/determine_raycast 2t append

