execute unless @s[gamemode=spectator] run return 0
execute if @s[tag=do2.staff] run return 0
execute if @s[tag=do2.fakePlayer] run return 0


tp @s @p[team=do2.players]
spectate @p[team=do2.players] @s
