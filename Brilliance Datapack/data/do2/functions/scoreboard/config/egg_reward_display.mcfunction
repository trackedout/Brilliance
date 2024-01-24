setblock -533 115 1952 oak_wall_sign[facing=south]
execute if score $dungeon do2.config.eggRewards matches ..0 run scoreboard players set $dungeon do2.config.eggRewards 0
execute if score $dungeon do2.config.eggRewards matches 3.. run scoreboard players set $dungeon do2.config.eggRewards 3

execute if score $dungeon do2.config.eggRewards matches 0 run data merge block -533 115 1952 {front_text:{messages:['{"text":"§r§eEgg Rewards"}','{"text":""}','{"text":"§rType: §b0","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/egg_reward_chat"}}','{"text":"§9§o§n( CLICK ME )"}']}}
execute if score $dungeon do2.config.eggRewards matches 1 run data merge block -533 115 1952 {front_text:{messages:['{"text":"§r§eEgg Rewards"}','{"text":""}','{"text":"§rType: §b1","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/egg_reward_chat"}}','{"text":"§9§o§n( CLICK ME )"}']}}
execute if score $dungeon do2.config.eggRewards matches 2 run data merge block -533 115 1952 {front_text:{messages:['{"text":"§r§eEgg Rewards"}','{"text":""}','{"text":"§rType: §b2","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/egg_reward_chat"}}','{"text":"§9§o§n( CLICK ME )"}']}}
execute if score $dungeon do2.config.eggRewards matches 3 run data merge block -533 115 1952 {front_text:{messages:['{"text":"§r§eEgg Rewards"}','{"text":""}','{"text":"§rType: §b3","clickEvent":{"action":"run_command","value":"/function do2:scoreboard/config/egg_reward_chat"}}','{"text":"§9§o§n( CLICK ME )"}']}}
