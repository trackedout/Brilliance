# Logs are exclusive to staff
execute unless entity @s[tag=do2.staff] run return 0

# if this function is ran, but isn't a score needed a check run the log display
execute unless score @s do2.trigger.about matches 100..299 run function do2:scoreboard/config/receive_logs/documentation


# XX0 = disable
# XX1 = Level 1
# XX2 = Level 2
# XX3 = Level 3
# XX4 = Level 4

# DatapackSetup
execute if score @s do2.trigger.about matches 100 run function do2:scoreboard/config/receive_logs/on_click/datapack_setup_0
execute if score @s do2.trigger.about matches 101 run function do2:scoreboard/config/receive_logs/on_click/datapack_setup_1
execute if score @s do2.trigger.about matches 102..109 run function do2:scoreboard/config/receive_logs/documentation


# Gamestate
execute if score @s do2.trigger.about matches 110 run function do2:scoreboard/config/receive_logs/on_click/gamestate_0
execute if score @s do2.trigger.about matches 111 run function do2:scoreboard/config/receive_logs/on_click/gamestate_1
execute if score @s do2.trigger.about matches 112..119 run function do2:scoreboard/config/receive_logs/documentation

# Evokers
execute if score @s do2.trigger.about matches 120 run function do2:scoreboard/config/receive_logs/on_click/evokers_0
execute if score @s do2.trigger.about matches 121 run function do2:scoreboard/config/receive_logs/on_click/evokers_1
execute if score @s do2.trigger.about matches 122..129 run function do2:scoreboard/config/receive_logs/documentation

# Cards
execute if score @s do2.trigger.about matches 130 run function do2:scoreboard/config/receive_logs/on_click/cards_0
execute if score @s do2.trigger.about matches 131 run function do2:scoreboard/config/receive_logs/on_click/cards_1
execute if score @s do2.trigger.about matches 132 run function do2:scoreboard/config/receive_logs/on_click/cards_2
execute if score @s do2.trigger.about matches 133..139 run function do2:scoreboard/config/receive_logs/documentation

# Pickups
execute if score @s do2.trigger.about matches 140 run function do2:scoreboard/config/receive_logs/on_click/pickups_0
execute if score @s do2.trigger.about matches 141 run function do2:scoreboard/config/receive_logs/on_click/pickups_1
execute if score @s do2.trigger.about matches 142 run function do2:scoreboard/config/receive_logs/on_click/pickups_2
execute if score @s do2.trigger.about matches 143..149 run function do2:scoreboard/config/receive_logs/documentation

# Embers
execute if score @s do2.trigger.about matches 150 run function do2:scoreboard/config/receive_logs/on_click/embers_0
execute if score @s do2.trigger.about matches 151 run function do2:scoreboard/config/receive_logs/on_click/embers_1
execute if score @s do2.trigger.about matches 152 run function do2:scoreboard/config/receive_logs/on_click/embers_2
execute if score @s do2.trigger.about matches 153 run function do2:scoreboard/config/receive_logs/on_click/embers_3
execute if score @s do2.trigger.about matches 154..159 run function do2:scoreboard/config/receive_logs/documentation

# Treasure
execute if score @s do2.trigger.about matches 160 run function do2:scoreboard/config/receive_logs/on_click/treasure_0
execute if score @s do2.trigger.about matches 161 run function do2:scoreboard/config/receive_logs/on_click/treasure_1
execute if score @s do2.trigger.about matches 162 run function do2:scoreboard/config/receive_logs/on_click/treasure_2
execute if score @s do2.trigger.about matches 163 run function do2:scoreboard/config/receive_logs/on_click/treasure_3
execute if score @s do2.trigger.about matches 164..169 run function do2:scoreboard/config/receive_logs/documentation

# Clank
execute if score @s do2.trigger.about matches 170 run function do2:scoreboard/config/receive_logs/on_click/clank_0
execute if score @s do2.trigger.about matches 171 run function do2:scoreboard/config/receive_logs/on_click/clank_1
execute if score @s do2.trigger.about matches 172 run function do2:scoreboard/config/receive_logs/on_click/clank_2
execute if score @s do2.trigger.about matches 173 run function do2:scoreboard/config/receive_logs/on_click/clank_3
execute if score @s do2.trigger.about matches 174..179 run function do2:scoreboard/config/receive_logs/documentation

# Hazard
execute if score @s do2.trigger.about matches 180 run function do2:scoreboard/config/receive_logs/on_click/hazard_0
execute if score @s do2.trigger.about matches 181 run function do2:scoreboard/config/receive_logs/on_click/hazard_1
execute if score @s do2.trigger.about matches 182 run function do2:scoreboard/config/receive_logs/on_click/hazard_2
execute if score @s do2.trigger.about matches 183 run function do2:scoreboard/config/receive_logs/on_click/hazard_3
execute if score @s do2.trigger.about matches 184..189 run function do2:scoreboard/config/receive_logs/documentation

# Dropper Room
execute if score @s do2.trigger.about matches 190 run function do2:scoreboard/config/receive_logs/on_click/dropper_room_0
execute if score @s do2.trigger.about matches 191 run function do2:scoreboard/config/receive_logs/on_click/dropper_room_1
execute if score @s do2.trigger.about matches 192 run function do2:scoreboard/config/receive_logs/on_click/dropper_room_2
execute if score @s do2.trigger.about matches 193..189 run function do2:scoreboard/config/receive_logs/documentation

# Player Actions
execute if score @s do2.trigger.about matches 200 run function do2:scoreboard/config/receive_logs/on_click/dropper_room_0
execute if score @s do2.trigger.about matches 201 run function do2:scoreboard/config/receive_logs/on_click/dropper_room_1
execute if score @s do2.trigger.about matches 202 run function do2:scoreboard/config/receive_logs/on_click/dropper_room_2
execute if score @s do2.trigger.about matches 203..209 run function do2:scoreboard/config/receive_logs/documentation

# Spam
execute if score @s do2.trigger.about matches 210 run function do2:scoreboard/config/receive_logs/on_click/spam_0
execute if score @s do2.trigger.about matches 211 run function do2:scoreboard/config/receive_logs/on_click/spam_1
execute if score @s do2.trigger.about matches 212 run function do2:scoreboard/config/receive_logs/on_click/spam_2
execute if score @s do2.trigger.about matches 213..219 run function do2:scoreboard/config/receive_logs/documentation

# Dungeon Setup
execute if score @s do2.trigger.about matches 220 run function do2:scoreboard/config/receive_logs/on_click/dungeon_setup_0
execute if score @s do2.trigger.about matches 221 run function do2:scoreboard/config/receive_logs/on_click/dungeon_setup_1
execute if score @s do2.trigger.about matches 222 run function do2:scoreboard/config/receive_logs/on_click/dungeon_setup_2
execute if score @s do2.trigger.about matches 223 run function do2:scoreboard/config/receive_logs/on_click/dungeon_setup_3
execute if score @s do2.trigger.about matches 224 run function do2:scoreboard/config/receive_logs/on_click/dungeon_setup_4
execute if score @s do2.trigger.about matches 225..229 run function do2:scoreboard/config/receive_logs/documentation

# Rest
execute if score @s do2.trigger.about matches 230..299 run function do2:scoreboard/config/receive_logs/documentation
