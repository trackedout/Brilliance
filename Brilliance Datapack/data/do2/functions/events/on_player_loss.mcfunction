# called when player died but DIDN'T win.

#Note that they died.
scoreboard players add @s do2.losses 1
scoreboard players add @s do2.loss_streak 1
scoreboard players set @s do2.win_streak 0

# set do2.highest_loss_streak if do2.loss_streak is >= than it.
execute if score @s do2.loss_streak >= @s do2.highest_loss_streak run scoreboard players operation @s do2.highest_loss_streak = @s do2.loss_streak
