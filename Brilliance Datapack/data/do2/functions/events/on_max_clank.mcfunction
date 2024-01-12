# - Start Log -
execute as @a[scores={do2.utility.logLevel=1..}] run tellraw @s ["",{"text":"[§9B§r]: Clank Triggered Max Clank."}]
# - End Log -


execute as @e[type=minecraft:warden] if score warden anger < max_clank_min anger run data modify entity @s anger.suspects[0].anger set value 79
