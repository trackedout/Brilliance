# This function is always ran at dungeon_setup

# The main function.
function do2:dungeon_setup/make_cards_always_available/set_available

# Make sure cards can't be re-picked if none in their category can be picked.



# Empty places where extra items might get stuck
data merge block -622 -17 1985 {Items:[]}
data merge block -623 -17 1985 {Items:[]}
data merge block -624 -17 1985 {Items:[]}
data merge block -625 -17 1985 {Items:[]}
data merge block -622 -17 1986 {Items:[]}
data merge block -623 -17 1986 {Items:[]}
data merge block -624 -17 1986 {Items:[]}
data merge block -625 -17 1986 {Items:[]}
# Set bank items to default.
data merge block -626 -15 1986 {Items: [{Slot: 0b, id: "minecraft:emerald", Count: 64b, tag: {RepairCost: 0, display: {Name: '{"text":"Bank1"}'}}}, {Slot: 1b, id: "minecraft:emerald", Count: 64b, tag: {RepairCost: 0, display: {Name: '{"text":"Bank1"}'}}}, {Slot: 2b, id: "minecraft:emerald", Count: 64b, tag: {RepairCost: 0, display: {Name: '{"text":"Bank2"}'}}}, {Slot: 3b, id: "minecraft:emerald", Count: 64b, tag: {RepairCost: 0, display: {Name: '{"text":"Bank2"}'}}}, {Slot: 4b, id: "minecraft:emerald", Count: 64b, tag: {RepairCost: 0, display: {Name: '{"text":"Bank3"}'}}}, {Slot: 5b, id: "minecraft:emerald", Count: 64b, tag: {RepairCost: 0, display: {Name: '{"text":"Bank4"}'}}}]}

# Note: this skews the probabilities, but at LEAST an always available card will never be chosen.
# Currently do to how the randomization works for cards, all we can do it this.

# - Bank 1 -
scoreboard players operation $bank do2.config.cardsAlwaysAvailable = $dungeon do2.config.cardsAlwaysAvailable
scoreboard players set $bank1 do2.config.cardsAlwaysAvailable 0
scoreboard players set $bank2 do2.config.cardsAlwaysAvailable 0
function do2:dungeon_setup/make_cards_always_available/determine_slots
execute store result block -626 -15 1986 Items[0].Count int 1 run scoreboard players get $bank1 do2.config.cardsAlwaysAvailable
execute store result block -626 -15 1986 Items[1].Count int 1 run scoreboard players get $bank2 do2.config.cardsAlwaysAvailable
# - Bank 2 -
scoreboard players operation $bank do2.config.cardsAlwaysAvailable = $dungeon do2.config.cardsAlwaysAvailable
scoreboard players remove $bank do2.config.cardsAlwaysAvailable 7
scoreboard players set $bank1 do2.config.cardsAlwaysAvailable 0
scoreboard players set $bank2 do2.config.cardsAlwaysAvailable 0
function do2:dungeon_setup/make_cards_always_available/determine_slots
execute store result block -626 -15 1986 Items[2].Count int 1 run scoreboard players get $bank1 do2.config.cardsAlwaysAvailable
execute store result block -626 -15 1986 Items[3].Count int 1 run scoreboard players get $bank2 do2.config.cardsAlwaysAvailable
# - Bank 3 -
scoreboard players operation $bank do2.config.cardsAlwaysAvailable = $dungeon do2.config.cardsAlwaysAvailable
scoreboard players remove $bank do2.config.cardsAlwaysAvailable 14
scoreboard players set $bank1 do2.config.cardsAlwaysAvailable 0
scoreboard players set $bank2 do2.config.cardsAlwaysAvailable 0
function do2:dungeon_setup/make_cards_always_available/determine_slots
execute store result block -626 -15 1986 Items[4].Count int 1 run scoreboard players get $bank1 do2.config.cardsAlwaysAvailable
# - Bank 4 -
scoreboard players operation $bank do2.config.cardsAlwaysAvailable = $dungeon do2.config.cardsAlwaysAvailable
scoreboard players remove $bank do2.config.cardsAlwaysAvailable 20
scoreboard players set $bank1 do2.config.cardsAlwaysAvailable 0
scoreboard players set $bank2 do2.config.cardsAlwaysAvailable 0
function do2:dungeon_setup/make_cards_always_available/determine_slots
execute store result block -626 -15 1986 Items[5].Count int 1 run scoreboard players get $bank1 do2.config.cardsAlwaysAvailable


