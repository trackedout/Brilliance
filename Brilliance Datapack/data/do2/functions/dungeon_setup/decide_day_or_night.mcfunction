# Whether it's DAY or NIGHT.
time set noon
function do2:random_gen/gen_random_percentage
execute if score @e[type=marker,tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum < $dungeon do2.config.nightTimeChance run time set night

# - Start Log -
execute unless score @e[type=marker,tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum < $dungeon do2.config.nightTimeChance as @a[scores={do2.utility.logLevel=1..}] run tellraw @s ["",{"text":"§f[§9B§f]: Time of day randomly set to: §eDAY §r("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fChance of Night Time: "},{"score":{"name":"$dungeon","objective":"do2.config.nightTimeChance"},"color":"aqua"},{"text":"§b%\n§fRandomly Generated Number: "},{"color":"aqua","score":{"name":"@e[type=marker,tag=RandomGenerator_RESULT,limit=1]","objective":"do2.utility.randomNum"}}]}},{"text":")"}]
execute if score @e[type=marker,tag=RandomGenerator_RESULT,limit=1] do2.utility.randomNum < $dungeon do2.config.nightTimeChance as @a[scores={do2.utility.logLevel=1..}] run tellraw @s ["",{"text":"§f[§9B§f]: Time of day randomly set to: §8NIGHT §r("},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§fChance of Night Time: "},{"score":{"name":"$dungeon","objective":"do2.config.nightTimeChance"},"color":"aqua"},{"text":"§b%\n§fRandomly Generated Number: "},{"color":"aqua","score":{"name":"@e[type=marker,tag=RandomGenerator_RESULT,limit=1]","objective":"do2.utility.randomNum"}}]}},{"text":")"}]
# - End Log -
