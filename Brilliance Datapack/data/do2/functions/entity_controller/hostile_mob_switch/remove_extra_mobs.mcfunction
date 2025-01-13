execute unless score $currentMobNumber do2.utility.mobSwitchCounter > $targetMobNumber do2.utility.mobSwitchCounter run return 0

kill @e[type=zombie_villager,sort=random,limit=1]
scoreboard players remove $currentMobNumber do2.utility.mobSwitchCounter 1

function do2:entity_controller/hostile_mob_switch/remove_extra_mobs
