# - Start Log -
execute as @a[scores={do2.logs.player_actions=2..}] run tellraw @s ["",{"text":"[§9B§r]: Player used Dungeon Master's Key. "}]
# - End Log -
advancement grant @a[tag=do2.running] only do2:hidden/adventuring/use_dm_key

# Make sure barrel and hopper feeding into barrel are giving player tracked:0b items.
data modify block -607 -58 1887 Items[0].tag merge value {tracked:0b}
data modify block -608 -58 1887 Items[0].tag merge value {tracked:0b}
data modify block -608 -58 1887 Items[1].tag merge value {tracked:0b}
data modify block -608 -58 1887 Items[2].tag merge value {tracked:0b}
