# - Start Log -
# Detect which method game ended.
execute as @a[scores={do2.logs.gamestate=1..}] if score $dungeon do2.run.active matches 1 if score $dungeon do2.run.player_deaths = $dungeon do2.run.players run tellraw @s ["",{"text":"§f[§9B§r]: Game Ended. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rAll "},{"score":{"name":"$dungeon","objective":"do2.run.players"},"color":"aqua"},{"text":" players have died at least once."}]}},{"text":")"}]
execute as @a[scores={do2.logs.gamestate=1..}] if score $dungeon do2.run.active matches 1 if score $dungeon do2.run.empty matches 300 run tellraw @s ["",{"text":"§f[§9B§r]: Game Ended. ("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rGame has been inactive for too long. §7do.run.empty §rmatches "},{"score":{"name":"$dungeon","objective":"do2.run.empty"},"color":"aqua"}]}},{"text":")"}]
# - End Log -

# called when no players are RUNNING the dungeon's instance. (all dead, all left)

# Fast Reset
execute if score $dungeon do2.config.fastReset matches 1 run setblock -542 122 1966 minecraft:redstone_block
execute if score $dungeon do2.config.fastReset matches 0 run setblock -542 122 1966 minecraft:glass

# Set Game to NOT be active.
scoreboard players set $dungeon do2.run.active 0

# if player DIDN'T win, then it's a loss:
execute as @a[team=do2.players] unless entity @s[tag=do2.win] run function do2:events/on_player_loss
execute as @a[team=do2.ghosts] unless entity @s[tag=do2.win] run function do2:events/on_player_loss

# Track crowns player collected.
execute as @a[team=do2.players] if entity @s[tag=do2.win] run function do2:agronet/add_crowns

# Reset Players
execute as @a[name=!TangoCam,name=!tangocam] run function do2:reset_player

# Unlock Settings
function do2:scoreboard/config/config_unlock

# AGRONET
function do2:agronet/game_end

# Replay Mod
function do2:replay_mod/stop
