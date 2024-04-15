execute store result score @s do2.utility.playersSaturation run data get entity @s foodSaturationLevel

execute if score @s do2.utility.playersFood < $dungeon do2.config.targetFoodLevel if entity @s[nbt=!{ActiveEffects:[{Id:17}]}] if entity @s[nbt=!{ActiveEffects:[{Id:19}]}] run effect give @s saturation 1 1
execute if score @s do2.utility.playersFood > $dungeon do2.config.targetFoodLevel if entity @s[nbt=!{ActiveEffects:[{Id:17}]}] if entity @s[nbt=!{ActiveEffects:[{Id:19}]}] run effect give @s hunger 1 40

execute if score @s do2.utility.playersSaturation < $dungeon do2.config.targetSaturationLevel if entity @s[nbt=!{ActiveEffects:[{Id:17}]}] if entity @s[nbt=!{ActiveEffects:[{Id:19}]}] run effect give @s saturation 1 1
execute if score @s do2.utility.playersSaturation > $dungeon do2.config.targetSaturationLevel if entity @s[nbt=!{ActiveEffects:[{Id:17}]}] if entity @s[nbt=!{ActiveEffects:[{Id:19}]}] run effect give @s hunger 1 40
