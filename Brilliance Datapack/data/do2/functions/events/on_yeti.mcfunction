# When a  yeti event pops up for the player.

# - Start Log -
execute if block -607 46 1942 minecraft:redstone_wire[power=0] as @a[scores={do2.logs.player_actions=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: Regular Yeti Appeared"}]
execute unless block -607 46 1942 minecraft:redstone_wire[power=0] as @a[scores={do2.logs.player_actions=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: Cleo Yeti Appeared"}]
# - End Log -

execute if block -607 46 1942 minecraft:redstone_wire[power=0] run advancement grant @a[team=do2.players] only do2:hidden/adventuring/yeti_scare
execute unless block -607 46 1942 minecraft:redstone_wire[power=0] run advancement grant @a[team=do2.players] only do2:hidden/adventuring/cleo_yeti_scare
