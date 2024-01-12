# Ran when the shulkerbox is PUT into the system.
# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Game has been activated."},{"text":" ? ","color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"§rRedstone line to detect shulker box placing has been activated."}]}},{"text":")"}]
# - End Log -


function do2:dungeon_setup/all

