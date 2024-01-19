scoreboard players set $dungeon do2.config.eggRewards 2
tellraw @s ["",{"text":"§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-§r\nYou've set the rewards upon finding an Easter Egg to:\n\n§dLevel 2§r:\n - Player gains close to original rewards. "},{"text":"§f( §4? §f)","hoverEvent":{"action":"show_text","contents":"§a5§r/§610§r/§415§r crowns depending on the level the egg is on."}},{"text":"\n§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-§r"}]
function do2:scoreboard/config/egg_reward_display
