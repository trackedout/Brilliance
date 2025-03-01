#  do2.config.amountOfBats is amount of bats allowed to spawn in the world.
# The higher the number, the less bats we should summon
execute if score $dungeon do2.config.amountOfBats matches ..0 unless entity @e[type=bat,tag=BAT01] run summon bat -585 30 1912 {NoAI:1b,Tags:["mobcap","BAT01"],Silent:1b,Invulnerable:1b}
execute if score $dungeon do2.config.amountOfBats matches ..1 unless entity @e[type=bat,tag=BAT02] run summon bat -585 31 1912 {NoAI:1b,Tags:["mobcap","BAT02"],Silent:1b,Invulnerable:1b}
execute if score $dungeon do2.config.amountOfBats matches ..2 unless entity @e[type=bat,tag=BAT03] run summon bat -585 32 1912 {NoAI:1b,Tags:["mobcap","BAT03"],Silent:1b,Invulnerable:1b}
execute if score $dungeon do2.config.amountOfBats matches ..3 unless entity @e[type=bat,tag=BAT04] run summon bat -585 33 1912 {NoAI:1b,Tags:["mobcap","BAT04"],Silent:1b,Invulnerable:1b}
execute if score $dungeon do2.config.amountOfBats matches ..4 unless entity @e[type=bat,tag=BAT05] run summon bat -585 34 1912 {NoAI:1b,Tags:["mobcap","BAT05"],Silent:1b,Invulnerable:1b}
execute if score $dungeon do2.config.amountOfBats matches ..5 unless entity @e[type=bat,tag=BAT06] run summon bat -585 35 1912 {NoAI:1b,Tags:["mobcap","BAT06"],Silent:1b,Invulnerable:1b}
execute if score $dungeon do2.config.amountOfBats matches ..6 unless entity @e[type=bat,tag=BAT07] run summon bat -585 36 1912 {NoAI:1b,Tags:["mobcap","BAT07"],Silent:1b,Invulnerable:1b}
execute if score $dungeon do2.config.amountOfBats matches ..7 unless entity @e[type=bat,tag=BAT08] run summon bat -585 37 1912 {NoAI:1b,Tags:["mobcap","BAT08"],Silent:1b,Invulnerable:1b}
execute if score $dungeon do2.config.amountOfBats matches ..8 unless entity @e[type=bat,tag=BAT09] run summon bat -585 38 1912 {NoAI:1b,Tags:["mobcap","BAT09"],Silent:1b,Invulnerable:1b}
execute if score $dungeon do2.config.amountOfBats matches ..9 unless entity @e[type=bat,tag=BAT10] run summon bat -585 39 1912 {NoAI:1b,Tags:["mobcap","BAT10"],Silent:1b,Invulnerable:1b}
execute if score $dungeon do2.config.amountOfBats matches ..10 unless entity @e[type=bat,tag=BAT11] run summon bat -585 40 1912 {NoAI:1b,Tags:["mobcap","BAT11"],Silent:1b,Invulnerable:1b}
execute if score $dungeon do2.config.amountOfBats matches ..11 unless entity @e[type=bat,tag=BAT12] run summon bat -585 41 1912 {NoAI:1b,Tags:["mobcap","BAT12"],Silent:1b,Invulnerable:1b}
execute if score $dungeon do2.config.amountOfBats matches ..12 unless entity @e[type=bat,tag=BAT13] run summon bat -585 42 1912 {NoAI:1b,Tags:["mobcap","BAT13"],Silent:1b,Invulnerable:1b}
execute if score $dungeon do2.config.amountOfBats matches ..13 unless entity @e[type=bat,tag=BAT14] run summon bat -585 43 1912 {NoAI:1b,Tags:["mobcap","BAT14"],Silent:1b,Invulnerable:1b}
execute if score $dungeon do2.config.amountOfBats matches ..14 unless entity @e[type=bat,tag=BAT15] run summon bat -585 44 1912 {NoAI:1b,Tags:["mobcap","BAT15"],Silent:1b,Invulnerable:1b}

# Make sure we don't have too many jic.
execute if score $dungeon do2.config.amountOfBats matches ..15 run kill @e[type=bat,tag=BAT15]
execute if score $dungeon do2.config.amountOfBats matches ..14 run kill @e[type=bat,tag=BAT14]
execute if score $dungeon do2.config.amountOfBats matches ..13 run kill @e[type=bat,tag=BAT13]
execute if score $dungeon do2.config.amountOfBats matches ..12 run kill @e[type=bat,tag=BAT12]
execute if score $dungeon do2.config.amountOfBats matches ..11 run kill @e[type=bat,tag=BAT11]
execute if score $dungeon do2.config.amountOfBats matches ..10 run kill @e[type=bat,tag=BAT10]
execute if score $dungeon do2.config.amountOfBats matches ..9 run kill @e[type=bat,tag=BAT09]
execute if score $dungeon do2.config.amountOfBats matches ..8 run kill @e[type=bat,tag=BAT08]
execute if score $dungeon do2.config.amountOfBats matches ..7 run kill @e[type=bat,tag=BAT07]
execute if score $dungeon do2.config.amountOfBats matches ..6 run kill @e[type=bat,tag=BAT06]
execute if score $dungeon do2.config.amountOfBats matches ..5 run kill @e[type=bat,tag=BAT05]
execute if score $dungeon do2.config.amountOfBats matches ..4 run kill @e[type=bat,tag=BAT04]
execute if score $dungeon do2.config.amountOfBats matches ..3 run kill @e[type=bat,tag=BAT03]
execute if score $dungeon do2.config.amountOfBats matches ..2 run kill @e[type=bat,tag=BAT02]
execute if score $dungeon do2.config.amountOfBats matches ..1 run kill @e[type=bat,tag=BAT01]
