execute unless data storage do2:gui Text.embers run return 0
execute as @a[nbt={ SelectedItem: { tag:{ Do2GuiLevel: 1 } } }] run function do2:gui/display/gui1/check_player

