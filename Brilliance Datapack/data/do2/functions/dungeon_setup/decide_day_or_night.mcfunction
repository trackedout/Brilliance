# If chance for night chance is less than 0, disable
execute if score $dungeon do2.config.nightTimeChance matches ..-1 run return 0

# Whether it's DAY or NIGHT.
time set noon
scoreboard players set $dungeon do2.utility.randomNumberRange 100
function do2:utility/random_gen/generate_random_number
execute if score $dungeon do2.utility.randomNum < $dungeon do2.config.nightTimeChance run time set night

# Play NIGHT sfx in practice and at night
execute if score @p[tag=do2.received_shulker] do2.utility.runType matches 1 if score $dungeon do2.utility.randomNum < $dungeon do2.config.nightTimeChance run playsound do2:misc.phantom_screech master @a -622 53 1948 1 1

# - Start Log -
execute unless score $dungeon do2.utility.randomNum < $dungeon do2.config.nightTimeChance as @a[scores={do2.logs.dungeon_setup=1..}] run tellraw @s ["",{"text":"§f[§9B§f]: Time of day randomly set to: §eDAY §r("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fChance of Night Time: "},{"score":{"name":"$dungeon","objective":"do2.config.nightTimeChance"},"color":"aqua"},{"text":"§b%\n§fRandomly Generated Number: "},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.utility.randomNum"}}]}},{"text":")"}]
execute if score $dungeon do2.utility.randomNum < $dungeon do2.config.nightTimeChance as @a[scores={do2.logs.dungeon_setup=1..}] run tellraw @s ["",{"text":"§f[§9B§f]: Time of day randomly set to: §8NIGHT §r("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fChance of Night Time: "},{"score":{"name":"$dungeon","objective":"do2.config.nightTimeChance"},"color":"aqua"},{"text":"§b%\n§fRandomly Generated Number: "},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.utility.randomNum"}}]}},{"text":")"}]
# - End Log -

# Agronet event
execute unless score $dungeon do2.utility.randomNum < $dungeon do2.config.nightTimeChance run function do2:external/agronet/logs/dungeon_setup/decide_day_or_night/day
execute if score $dungeon do2.utility.randomNum < $dungeon do2.config.nightTimeChance run function do2:external/agronet/logs/dungeon_setup/decide_day_or_night/night
