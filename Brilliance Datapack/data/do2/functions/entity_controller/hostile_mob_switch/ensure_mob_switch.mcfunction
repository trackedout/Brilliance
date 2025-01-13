execute unless score $mobPerPlayer do2.utility.mobSwitchCounter matches 0.. run function do2:entity_controller/hostile_mob_switch/setup
# Figure out how many mobs we WANT
scoreboard players set $targetMobNumber do2.utility.mobSwitchCounter 0
execute as @a[gamemode=!spectator] run scoreboard players add $targetMobNumber do2.utility.mobSwitchCounter 1
scoreboard players operation $targetMobNumber do2.utility.mobSwitchCounter *= $mobPerPlayer do2.utility.mobSwitchCounter
# Figure out how many mobs we HAVE
scoreboard players set $currentMobNumber do2.utility.mobSwitchCounter 0
execute as @e[type=zombie_villager,tag=mobSwitch] run scoreboard players add $currentMobNumber do2.utility.mobSwitchCounter 1

# Make sure we have correct amounts
execute if score $currentMobNumber do2.utility.mobSwitchCounter > $targetMobNumber do2.utility.mobSwitchCounter run function do2:entity_controller/hostile_mob_switch/remove_extra_mobs
execute if score $currentMobNumber do2.utility.mobSwitchCounter < $targetMobNumber do2.utility.mobSwitchCounter run function do2:entity_controller/hostile_mob_switch/summon_hostile_mob


