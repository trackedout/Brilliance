execute unless score $currentMobNumber do2.utility.mobSwitchCounter < $targetMobNumber do2.utility.mobSwitchCounter run return 0

summon minecraft:zombie_villager -593 66 1977 {Xp:1, Tags:["do2.manually_spawned","mobSwitch"],Silent:1b}
scoreboard players add $currentMobNumber do2.utility.mobSwitchCounter 1

function do2:entity_controller/hostile_mob_switch/summon_hostile_mob
