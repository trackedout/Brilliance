execute unless data storage do2:gui Text.embers run return 0
execute as @a[nbt={ SelectedItem: { tag:{ Do2GuiLevel: 2 } } }] run function do2:gui/display/gui2/check_player

