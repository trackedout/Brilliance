execute store result score #tmp do2.utility.gui run data get block -618 25 1959 Items[0].Count
scoreboard players operation $clank_block do2.utility.gui = #tmp do2.utility.gui

execute store result score #tmp do2.utility.gui run data get block -616 25 1983 Items[0].Count
scoreboard players operation $hazard_block do2.utility.gui = #tmp do2.utility.gui

execute store result score #tmp do2.utility.gui run data get block -614 25 1990 Items[0].Count
execute store result score #tmp2 do2.utility.gui run data get block -614 25 1990 Items[1].Count
scoreboard players operation #tmp do2.utility.gui += #tmp2 do2.utility.gui
execute store result score #tmp2 do2.utility.gui run data get block -614 25 1990 Items[2].Count
scoreboard players operation #tmp do2.utility.gui += #tmp2 do2.utility.gui
execute store result score #tmp2 do2.utility.gui run data get block -614 25 1990 Items[3].Count
scoreboard players operation #tmp do2.utility.gui += #tmp2 do2.utility.gui
scoreboard players operation $treasure do2.utility.gui = #tmp do2.utility.gui

execute store result score #tmp do2.utility.gui run data get block -614 25 1999 Items[0].Count
execute store result score #tmp2 do2.utility.gui run data get block -614 25 1999 Items[1].Count
scoreboard players operation #tmp do2.utility.gui += #tmp2 do2.utility.gui
execute store result score #tmp2 do2.utility.gui run data get block -614 25 1999 Items[2].Count
scoreboard players operation #tmp do2.utility.gui += #tmp2 do2.utility.gui
scoreboard players operation $embers do2.utility.gui = #tmp do2.utility.gui

execute store result score #tmp do2.utility.gui run data get block -525 52 1872 Items[0].Count
scoreboard players operation $cards do2.utility.gui = #tmp do2.utility.gui

function do2:gui/display/update

