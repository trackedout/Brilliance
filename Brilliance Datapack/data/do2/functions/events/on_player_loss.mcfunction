# called when player died but DIDN'T win.
# - Start Log -
tag @s add lossLogTarget
execute as @a[scores={do2.logs.gamestate=1..}] run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=lossLogTarget]"},{"text":" lost. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rPlayer died without reaching the end."}]}},{"text":")"}]
tag @s remove lossLogTarget
# - End Log -

#Note that they died.
scoreboard players add @s do2.losses 1
scoreboard players add @s do2.loss_streak 1
scoreboard players set @s do2.win_streak 0
scoreboard players add $dungeon do2.losses 1
scoreboard players add $dungeon do2.loss_streak 1
scoreboard players set $dungeon do2.win_streak 0

# player no longer running
tag @s remove do2.running

# set do2.highest_loss_streak if do2.loss_streak is >= than it.
execute if score @s do2.loss_streak >= @s do2.highest_loss_streak run scoreboard players operation @s do2.highest_loss_streak = @s do2.loss_streak
execute if score $dungeon do2.loss_streak >= $dungeon do2.highest_loss_streak run scoreboard players operation $dungeon do2.highest_loss_streak = $dungeon do2.loss_streak

# AGRONET
function do2:agronet/game_lost