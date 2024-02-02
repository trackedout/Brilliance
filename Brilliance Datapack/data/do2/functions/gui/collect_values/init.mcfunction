scoreboard objectives add do2.score.gui dummy "Decked Out 2" 
scoreboard objectives add do2.score.tmp dummy
execute unless block -525 52 1872 minecraft:dropper run setblock -525 52 1872 minecraft:dropper[facing=west]
execute unless block -526 52 1872 minecraft:dropper run setblock -526 52 1872 minecraft:dropper[facing=east]{ Items: [{ id: "minecraft:iron_nugget", Slot: 0b, Count: 64b }] }
schedule function do2:gui/collect_values/update_scoreboard 1t replace

