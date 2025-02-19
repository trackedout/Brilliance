# Make sure cards are available
execute unless score $dungeon do2.config.cardsAlwaysAvailable matches 1..26 run return 0


# Evasion
setblock -624 -17 1998 minecraft:redstone_block
data modify block -619 -18 1998 Items append from block -620 -17 1998 Items[0]
data merge block -618 -19 1996 {Items: [{Slot: 1b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Tread Lightly"}'}}}, {Slot: 2b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Loot and Scoot"}'}}},{Slot: 3b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Frost Focus"}'}}}, {Slot: 4b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Second Wind"}'}}}, {Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Beast Sense"}'}}}, {Slot: 6b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Bounding Strides"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..1 run return 0

# Tread Lightly
setblock -624 -17 1999 minecraft:redstone_block
data modify block -619 -18 1999 Items append from block -620 -17 1999 Items[0]
data merge block -618 -19 1996 {Items: [{Slot: 2b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Loot and Scoot"}'}}}, {Slot: 3b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Frost Focus"}'}}}, {Slot: 4b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Second Wind"}'}}}, {Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Beast Sense"}'}}}, {Slot: 6b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Bounding Strides"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..2 run return 0

# Loot & Scoot
setblock -624 -17 2000 minecraft:redstone_block
data modify block -619 -18 2000 Items append from block -620 -17 2000 Items[0]
data merge block -618 -19 1996 {Items: [{Slot: 3b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Frost Focus"}'}}}, {Slot: 4b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Second Wind"}'}}}, {Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Beast Sense"}'}}}, {Slot: 6b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Bounding Strides"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..3 run return 0

# Frost Focus
setblock -624 -17 2001 minecraft:redstone_block
data modify block -619 -18 2001 Items append from block -620 -17 2001 Items[0]
data merge block -618 -19 1996 {Items: [{Slot: 4b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Second Wind"}'}}}, {Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Beast Sense"}'}}}, {Slot: 6b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Bounding Strides"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..4 run return 0

# Second Wind
setblock -624 -17 2003 minecraft:redstone_block
data modify block -619 -18 2003 Items append from block -620 -17 2003 Items[0]
data merge block -618 -19 1996 {Items: [{Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Beast Sense"}'}}}, {Slot: 6b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Bounding Strides"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..5 run return 0

# Beast Sense
setblock -624 -17 2004 minecraft:redstone_block
data modify block -619 -18 2004 Items append from block -620 -17 2004 Items[0]
data merge block -618 -19 1996 {Items: [{Slot: 6b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Bounding Strides"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..6 run return 0

# Bounding Strides
setblock -624 -17 2005 minecraft:redstone_block
data modify block -619 -18 2005 Items append from block -620 -17 2005 Items[0]
data merge block -618 -19 1996 {Items: []}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..7 run return 0

# Reckless Charge
setblock -624 -17 2007 minecraft:redstone_block
data modify block -619 -18 2007 Items append from block -620 -17 2007 Items[0]
data merge block -618 -19 2015 {Items: [{Slot: 1b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Sprint"}'}}}, {Slot: 2b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Nimble Looting"}'}}}, {Slot: 3b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Smash and Grab"}'}}}, {Slot: 4b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Quickstep"}'}}}, {Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Suit Up"}'}}}, {Slot: 6b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"AdrenalineRush"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..8 run return 0

# Sprint
setblock -624 -17 2008 minecraft:redstone_block
data modify block -619 -18 2008 Items append from block -620 -17 2008 Items[0]
data merge block -618 -19 2015 {Items: [{Slot: 2b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Nimble Looting"}'}}}, {Slot: 3b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Smash and Grab"}'}}}, {Slot: 4b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Quickstep"}'}}}, {Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Suit Up"}'}}}, {Slot: 6b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"AdrenalineRush"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..9 run return 0

# Nimble Looting
setblock -624 -17 2010 minecraft:redstone_block
data modify block -619 -18 2010 Items append from block -620 -17 2010 Items[0]
data merge block -618 -19 2015 {Items: [{Slot: 3b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Smash and Grab"}'}}}, {Slot: 4b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Quickstep"}'}}}, {Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Suit Up"}'}}}, {Slot: 6b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"AdrenalineRush"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..10 run return 0

# Smash & Grab
setblock -624 -17 2011 minecraft:redstone_block
data modify block -619 -18 2011 Items append from block -620 -17 2011 Items[0]
data merge block -618 -19 2015 {Items: [{Slot: 4b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Quickstep"}'}}}, {Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Suit Up"}'}}}, {Slot: 6b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"AdrenalineRush"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..11 run return 0

# Quickstep
setblock -624 -17 2012 minecraft:redstone_block
data modify block -619 -18 2012 Items append from block -620 -17 2012 Items[0]
data merge block -618 -19 2015 {Items: [{Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Suit Up"}'}}}, {Slot: 6b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"AdrenalineRush"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..12 run return 0

# Suit Up
setblock -624 -17 2013 minecraft:redstone_block
data modify block -619 -18 2013 Items append from block -620 -17 2013 Items[0]
data merge block -618 -19 2015 {Items: [{Slot: 6b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"AdrenalineRush"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..13 run return 0

# Adrenaline Rush
setblock -624 -17 2014 minecraft:redstone_block
data modify block -619 -18 2014 Items append from block -620 -17 2014 Items[0]
data merge block -618 -19 2015 {Items: []}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..14 run return 0

# Eerie Silence
setblock -650 -17 2013 minecraft:redstone_block
data modify block -655 -18 2013 Items append from block -654 -17 2013 Items[0]
data merge block -656 -19 2015 {Items: [{Slot: 1b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Dungeon Repairs"}'}}}, {Slot: 2b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Swagger"}'}}}, {Slot: 3b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Chill Step"}'}}}, {Slot: 4b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Speed Runner"}'}}}, {Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Eyes on the Prize"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..15 run return 0

# Dungeon Repairs
setblock -650 -17 2012 minecraft:redstone_block
data modify block -655 -18 2012 Items append from block -654 -17 2012 Items[0]
data merge block -656 -19 2015 {Items: [{Slot: 2b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Swagger"}'}}}, {Slot: 3b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Chill Step"}'}}}, {Slot: 4b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Speed Runner"}'}}}, {Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Eyes on the Prize"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..16 run return 0

# Swagger
setblock -650 -17 2011 minecraft:redstone_block
data modify block -655 -18 2011 Items append from block -654 -17 2011 Items[0]
data merge block -656 -19 2015 {Items: [{Slot: 3b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Chill Step"}'}}}, {Slot: 4b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Speed Runner"}'}}}, {Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Eyes on the Prize"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..17 run return 0

# Chill Step
setblock -650 -17 2010 minecraft:redstone_block
data modify block -655 -18 2010 Items append from block -654 -17 2010 Items[0]
data merge block -656 -19 2015 {Items: [{Slot: 4b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Speed Runner"}'}}}, {Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Eyes on the Prize"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..18 run return 0

# Speedrunner
setblock -650 -17 2009 minecraft:redstone_block
data modify block -655 -18 2009 Items append from block -654 -17 2009 Items[0]
data merge block -656 -19 2015 {Items: [{Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Eyes on the Prize"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..19 run return 0

# Eyes on the Prize
setblock -650 -17 2008 minecraft:redstone_block
data modify block -655 -18 2008 Items append from block -654 -17 2008 Items[0]
data merge block -656 -19 2015 {Items: []}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..20 run return 0

# Pirates Booty
setblock -650 -17 2005 minecraft:redstone_block
data modify block -655 -18 2005 Items append from block -654 -17 2005 Items[0]
data merge block -656 -19 1996 {Items: [{Slot: 1b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Cold Snap"}'}}}, {Slot: 2b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Silent Runner"}'}}}, {Slot: 3b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Fuzzy Bunny Slippers"}'}}}, {Slot: 4b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Deepfrost"}'}}}, {Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Brilliance"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..21 run return 0

# Cold Snap
setblock -650 -17 2004 minecraft:redstone_block
data modify block -655 -18 2004 Items append from block -654 -17 2004 Items[0]
data merge block -656 -19 1996 {Items: [{Slot: 2b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Silent Runner"}'}}}, {Slot: 3b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Fuzzy Bunny Slippers"}'}}}, {Slot: 4b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Deepfrost"}'}}}, {Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Brilliance"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..22 run return 0

# Silent Runner
setblock -650 -17 2003 minecraft:redstone_block
data modify block -655 -18 2003 Items append from block -654 -17 2003 Items[0]
data merge block -656 -19 1996 {Items: [{Slot: 3b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Fuzzy Bunny Slippers"}'}}}, {Slot: 4b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Deepfrost"}'}}}, {Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Brilliance"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..23 run return 0

# Fuzzy Bunny Slippers
setblock -650 -17 2002 minecraft:redstone_block
data modify block -655 -18 2002 Items append from block -654 -17 2002 Items[0]
data merge block -656 -19 1996 {Items: [{Slot: 4b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Deepfrost"}'}}}, {Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Brilliance"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..24 run return 0

# Deepfrost
setblock -650 -17 2001 minecraft:redstone_block
data modify block -655 -18 2001 Items append from block -654 -17 2001 Items[0]
data merge block -656 -19 1996 {Items: [{Slot: 5b, id: "minecraft:iron_nugget", Count: 1b, tag: {tracked: 0b, RepairCost: 0, display: {Name: '{"text":"Brilliance"}'}}}]}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..25 run return 0

# Brilliance
setblock -650 -17 2000 minecraft:redstone_block
data modify block -655 -18 2000 Items append from block -654 -17 2000 Items[0]
data merge block -656 -19 1996 {Items: []}
execute if score $dungeon do2.config.cardsAlwaysAvailable matches ..26 run return 0
