# - Start Log -
# Detect which method game ended.
execute as @a[scores={do2.utility.logLevel=1..}] if score $dungeon do2.run.active matches 1 if score $dungeon do2.run.player_deaths = $dungeon do2.run.players run tellraw @s ["",{"text":"[§9B§r]: Game Ended. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rAll "},{"score":{"name":"$dungeon","objective":"do2.run.players"},"color":"aqua"},{"text":" players have died at least once."}]}},{"text":")"}]
execute as @a[scores={do2.utility.logLevel=1..}] if score $dungeon do2.run.active matches 1 if score $dungeon do2.run.empty matches 300 run tellraw @s ["",{"text":"[§9B§r]: Game Ended. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rGame has been inactive for too long. §7do.run.empty §rmatches "},{"score":{"name":"$dungeon","objective":"do2.run.empty"},"color":"aqua"}]}},{"text":")"}]
# - End Log -

# called when no players are RUNNING the dungeon's instance. (all dead, all left)

# Set Game to NOT be active.
scoreboard players set $dungeon do2.run.active 0

# if player DIDN'T win, then it's a loss:
execute as @a unless entity @s[tag=do2.win] run function do2:events/on_player_loss

# AGRONET
function do2:agronet/game_end
