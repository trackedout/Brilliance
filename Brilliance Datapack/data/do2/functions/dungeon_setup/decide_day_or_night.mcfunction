# Whether it's DAY or NIGHT.
time set noon
scoreboard players set $dungeon do2.utility.randomNumberRange 100
function do2:utility/random_gen/generate_random_number
execute if score $dungeon do2.utility.randomNum < $dungeon do2.config.nightTimeChance run time set night

# - Start Log -
execute unless score $dungeon do2.utility.randomNum < $dungeon do2.config.nightTimeChance as @a[scores={do2.logs.dungeon_setup=1..}] run tellraw @s ["",{"text":"§f[§9B§f]: Time of day randomly set to: §eDAY §r("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fChance of Night Time: "},{"score":{"name":"$dungeon","objective":"do2.config.nightTimeChance"},"color":"aqua"},{"text":"§b%\n§fRandomly Generated Number: "},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.utility.randomNum"}}]}},{"text":")"}]
execute if score $dungeon do2.utility.randomNum < $dungeon do2.config.nightTimeChance as @a[scores={do2.logs.dungeon_setup=1..}] run tellraw @s ["",{"text":"§f[§9B§f]: Time of day randomly set to: §8NIGHT §r("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fChance of Night Time: "},{"score":{"name":"$dungeon","objective":"do2.config.nightTimeChance"},"color":"aqua"},{"text":"§b%\n§fRandomly Generated Number: "},{"color":"aqua","score":{"name":"$dungeon","objective":"do2.utility.randomNum"}}]}},{"text":")"}]
# - End Log -

# Agronet event
execute unless score $dungeon do2.utility.randomNum < $dungeon do2.config.nightTimeChance run function do2:external/agronet/logs/dungeon_setup/decide_day_or_night/day
execute if score $dungeon do2.utility.randomNum < $dungeon do2.config.nightTimeChance run function do2:external/agronet/logs/dungeon_setup/decide_day_or_night/night