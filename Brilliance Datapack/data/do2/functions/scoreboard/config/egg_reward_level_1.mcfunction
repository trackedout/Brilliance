scoreboard players set $dungeon do2.config.eggRewards 1
tellraw @s ["",{"text":"§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-§r\nYou've set the rewards upon finding an Easter Egg to:\n\n§aLevel 1§a: \n - Player gains §u§loriginal§r §o§1Decked Out 2§r rewards. "},{"text":"( §4? )","hoverEvent":{"action":"show_text","contents":"Most eggs give §a5§r/§610§r/§415§r crowns depending on level it's on."}},{"text":" \n§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-§r"}]
function do2:scoreboard/config/egg_reward_display
