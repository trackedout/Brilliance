# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Player used Dungeon Master's Key. "}]
# - End Log -
advancement grant @a[tag=do2.running] only do2:hidden/adventuring/use_dm_key
