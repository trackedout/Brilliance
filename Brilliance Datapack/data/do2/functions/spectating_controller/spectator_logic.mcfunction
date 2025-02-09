# While game is active, force spectating.
execute as @a[team=do2.ghosts] at @s run function do2:spectating_controller/force_spectate
execute if score $dungeon do2.run.active matches 2 as @a[team=do2.spectators] at @s run function do2:spectating_controller/force_spectate


# Enforce spectators to stay in lobby. (INSTANCE ONLY)
execute unless score $dungeon do2.utility.onInstance matches 1 run return 0
execute as @a[team=do2.spectators] if score $dungeon do2.run.active matches 3 at @s if entity @p[team=do2.players,distance=..1] unless entity @s[tag=do2.staff] run tellraw @s {"text":"Game is over, you are unable to spectate purchases.","color":"light_purple"}
execute as @a[team=do2.spectators] if score $dungeon do2.run.active matches 3 at @s if entity @p[team=do2.players,distance=..1] unless entity @s[tag=do2.staff] run spectate
execute as @a[team=do2.spectators] if score $dungeon do2.run.active matches 3 at @s if entity @p[team=do2.players,distance=..1] unless entity @s[tag=do2.staff] run tp @s -524 114 1980


# Game isn't active YET.
execute if score $dungeon do2.run.active matches 0..1 as @a[gamemode=spectator,tag=!do2.fakePlayer] at @s run function do2:spectating_controller/stay_in_lobby
# Game is over, but purchases are private.
execute if score $dungeon do2.run.active matches 3 as @a[team=do2.spectators,tag=!do2.fakePlayer] at @s run function do2:spectating_controller/stay_in_lobby
