# Could be fun to have some rewards!
# playsound minecraft:block.barrel.open master @s -504 45 2017
# data modify block -504 45 2017 Items set value ['{Slot: 13b, id: "minecraft:iron_nugget", Count: 1b, tag: { CustomModelData: 2, display: {Name: \'{"text":"❄☠ Decked Out Crown ☠❄"}\'}}}']

# Grant "find any egg advancement."
advancement grant @s only do2:hidden/egg_hunt/root

# Grant "find all eggs advancement."
execute as @s[advancements={do2:hidden/egg_hunt/eggs/bdoubleo=true,do2:hidden/egg_hunt/eggs/cubfan=true,do2:hidden/egg_hunt/eggs/docm77=true,do2:hidden/egg_hunt/eggs/false=true,do2:hidden/egg_hunt/eggs/golden=true,do2:hidden/egg_hunt/eggs/scar=true,do2:hidden/egg_hunt/eggs/grian=true,do2:hidden/egg_hunt/eggs/hypno=true,do2:hidden/egg_hunt/eggs/ijevin=true,do2:hidden/egg_hunt/eggs/impulse=true,do2:hidden/egg_hunt/eggs/iskall=true,do2:hidden/egg_hunt/eggs/joehills=true,do2:hidden/egg_hunt/eggs/pearlescent_moon=true,do2:hidden/egg_hunt/eggs/stress=true,do2:hidden/egg_hunt/eggs/vintage_beef=true,do2:hidden/egg_hunt/eggs/welsknight=true,do2:hidden/egg_hunt/eggs/xbcrafted=true,do2:hidden/egg_hunt/eggs/xisuma=true,do2:hidden/egg_hunt/eggs/zedaph=true,do2:hidden/egg_hunt/eggs/zombie_cleo=true}] run advancement grant @s only do2:hidden/egg_hunt/egg_hunter
