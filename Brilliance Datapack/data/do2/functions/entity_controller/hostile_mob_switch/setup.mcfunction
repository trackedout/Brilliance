fill -594 65 1978 -592 65 1976 minecraft:purple_glazed_terracotta
fill -592 66 1976 -594 67 1978 minecraft:tinted_glass
setblock -593 68 1977 minecraft:purple_glazed_terracotta
fill -594 67 1978 -594 65 1978 air
fill -592 67 1978 -592 65 1978 air
fill -592 67 1976 -592 65 1976 air
fill -594 67 1976 -594 65 1976 air
setblock -593 69 1977 minecraft:oak_sign
fill -593 67 1977 -593 66 1977 vine[north=true]
data merge block -593 69 1977 {is_waxed:1b, front_text:{messages:['{"text":"Mob Switch"}','{"text":""}','{"text":"Brilliance"}','{"text":"Controlled    "}']}}
scoreboard players set $mobPerPlayer do2.utility.mobSwitchCounter 70
