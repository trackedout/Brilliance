# Called an evoker activates.
# - Start Log -
execute as @a[scores={do2.logs.evokers=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Activated Evoker. "}]
# - End Log -
