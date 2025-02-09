scoreboard players set @s do2.trigger.enable_coop 0

execute unless score @p[tag=do2.received_shulker] do2.utility.runType matches 1 run return 0
execute unless score $dungeon do2.run.active matches 0 run return 0

tellraw @s ["§r§l§aENABLED §r§oCO-OP§r!\nHave your partner join via the spectate NPC in the lobby."]
function do2:external/agronet/game_start

