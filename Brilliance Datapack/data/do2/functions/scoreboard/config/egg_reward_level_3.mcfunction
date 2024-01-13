scoreboard players set $dungeon do2.config.eggRewards 3
tellraw @s ["",{"text":"§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-§r\nYou've set the rewards upon finding an Easter Egg to:\n\n§eLevel 3§r:\n - Player gains balanced amount of crowns. "},{"text":"( §4? )","hoverEvent":{"action":"show_text","contents":"§a1§r/§62§r/§43§r crowns depending on the level the egg is on."}},{"text":"\n - Since egg locations are public, reduced rewards.\n§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-§r"}]
function do2:scoreboard/config/egg_reward_display
