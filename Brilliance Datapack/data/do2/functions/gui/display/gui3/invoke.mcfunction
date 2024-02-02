execute unless data storage do2:gui Text.embers run return 0
execute as @a[nbt={ SelectedItem: { tag:{ Do2GuiLevel: 3 } } }] run function do2:gui/display/gui3/check_player

