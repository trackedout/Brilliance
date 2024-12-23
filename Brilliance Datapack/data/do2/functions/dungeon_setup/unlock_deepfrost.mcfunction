setblock -561 115 1984 minecraft:warped_button[facing=north]
setblock -561 114 1984 air
execute positioned -549 106 1972 run function do2:reset_dungeon/default_states/compasses/deadly_2
execute positioned -549 106 1971 run function do2:reset_dungeon/default_states/compasses/deepfrost_1
execute positioned -549 106 1970 run function do2:reset_dungeon/default_states/compasses/deepfrost_2

execute unless score $dungeon do2.config.refillDungeonType matches 2 run return 0
clone -468 114 1984 -468 114 1984 -549 106 1972 replace
clone -467 114 1984 -467 114 1984 -549 106 1971 replace
clone -466 114 1984 -466 114 1984 -549 106 1970 replace
