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
data merge block -626 -15 1986 {Items: [{Slot: 0b, id: "minecraft:emerald", Count: 7b, tag: {RepairCost: 0, display: {Name: '{"text":"Bank1"}'}}}, {Slot: 1b, id: "minecraft:emerald", Count: 7b, tag: {RepairCost: 0, display: {Name: '{"text":"Bank1"}'}}}, {Slot: 2b, id: "minecraft:emerald", Count: 7b, tag: {RepairCost: 0, display: {Name: '{"text":"Bank2"}'}}}, {Slot: 3b, id: "minecraft:emerald", Count: 7b, tag: {RepairCost: 0, display: {Name: '{"text":"Bank2"}'}}}, {Slot: 4b, id: "minecraft:emerald", Count: 6b, tag: {RepairCost: 0, display: {Name: '{"text":"Bank3"}'}}}, {Slot: 5b, id: "minecraft:emerald", Count: 6b, tag: {RepairCost: 0, display: {Name: '{"text":"Bank4"}'}}}]}

