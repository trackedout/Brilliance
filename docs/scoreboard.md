# Brilliance Scoreboard
Brilliance uses a massive amount of scoreboard objectives for a vast amount of things.<br>Hopefully this list will explain and describe every single scoreboard objective for you.
<br><br>
## Scoreboard naming scheme.
All scoreboards used for Decked Out 2 will start with `do2.` prefix. i.e.
> `do2.runs` `do2.wins`

The name immediately after the `do2.` will generally be describing it's category. i.e.
> `do2.run.active` `do2.systems.hazard.blocked` `do2.cards.played.SNE`
#### List of current categories.
|     category      |                                         description                                         | example                              |
|:-----------------:|:-------------------------------------------------------------------------------------------:|:-------------------------------------|
|       tests       |                     Used temporarily to test for the existence of items                     | `do2.tests.doesTangoCamExist`        |
|        run        |           Used to store per-run scores, scores that reset when a new run starts.            | `do2.run.foundArtifact`              |
|     run.items     |                    Used to how many items have been collected this run.                     | `do2.run.items.embers`               |
|    run.systems    |                     Used to store what systems have triggered this run.                     | ` do2.run.systems.treasure.released` |
|      systems      |           Used to store the total of systems have triggered across multiple runs.           | ` do2.systems.clank.generated`       |
|     lifetime      |                   Used to store lifetime scores, scores that never reset.                   | `do2.lifetime.pickedup.crowns`       |
| lifetime.pickedup |                Used to store the lifetime amount of an item being picked up.                | `do2.lifetime.pickedup.embers`       |
| lifetime.escaped  |              Used to store the lifetime amount of an item being escaped with.               | `do2.lifetime.escaped.crowns`        |
|  lifetime.spent   |                  Used to store the lifetime amount of an item being spent.                  | `do2.lifetime.spent.tomes`           |
|      agronet      |                Used for communication with agronet, exclusive to the server.                | `do2.agronet.card_bought`            |
|      config       |                      Used to store settings on how the game is played.                      | `do2.config.forceGamemode`           |
|     config.bc     |             Used to store Balance Changes settings on how the game is balanced.             | `do2.config.bc.snowHazard`           |
|     config.fr     |            Used to store Fresh Changes settings on how fresh the game should be.            | `do2.config.fr.teleportKillers`      |
|     config.mc     |        Used to store Mob Controlling settings on how the mobs exist inside the game.        | `do2.config.ec.level1Zones`          |
|       eggs        |         Used to store what eggs are found and what rewards have been given to whom.         | `do2.eggs.grian`                     |
|       logs        |                   Used to store debug logs players might want to receive.                   | `do2.logs.pickups`                   |
|      utility      | Used to store small utility scores that are used for checks in other parts of the datapack. | `do2.utility.deathCount`             |
|       cards       |                    Used to store data relevant to Decked Out 2's cards.                     | `do2.cards.bought.MOC`               |
|     artifacts     |                         Used to store which artifacts are picked up                         | `do2.artifacts.HAY`                  |
|     artifakes     |                         Used to store which artifakes are picked up                         | `do2.artifakes.DLP`                  |
|      trigger      |                             Used to create `/trigger` commands                              | `do2.trigger.logs `                  |

## List of Scoreboards

#### Table's Key:
1. `Auto`
   1. ✅ | We fully automate this objective in the datapack.
   2. ❌ | We currently do not have a means of collecting the data yet.
   3. ⛔ | The data isn't automated and is player controlled.
2. `Target`
   1. 🟢 | The score is stored on `@a`. 
   1. 🔵 | The score is stored on `@a[tag=do2.running]`. 
   2. 🔴 | The score is stored on `$dungeon`.
   3. 🟣 | The score is stored on `@p[tag=do2.received_shulker]`.
   3. 🟤 | The score is stored on both `@a[tag=do2.running]` & `$dungeon`. 
3. `Name`
   - Name of the scoreboard objective.
4. `Category`
   1. `Totals`  | These scores can ONLY go <b>up</b> from across runs.
   2. `Current` | These scores only track what is going on for the <b>current</b> run.
   3. `Utility` | These are used by the datapack to process complicated math and/or checks.
   4. `Config`  | These are used to modify how the datapack and the dungeon run.
5. `Description`
   - A brief description of the scoreboard objective's purpose.

#### Agronet should store and transfer everything marked in category: `Totals`
   
| Auto | Target | Name                                 | Category | Description                                                                                      |
|:----:|:------:|:-------------------------------------|:--------:|:-------------------------------------------------------------------------------------------------|
|  ✅   |   🔴   | do2.agronet.card_available           | agronet  | Used to tell agronet what card was available.                                                    |
|  ✅   |   🔴   | do2.agronet.card_bought              | agronet  | Used to tell agronet what card was bought.                                                       |
|  ✅   |   🔴   | do2.agronet.card_played              | agronet  | Used to tell agronet what card was played.                                                       |
|  ⛔   |   🔴   | do2.config.amountOfBats              |  config  | How many bats allowed on L3 or L4 at a time.                                                     |
|  ❌   |   🔴   | do2.config.amountOfFish              |  config  | The amount of fish allowed to exist.                                                             |
|  ⛔   |   🔴   | do2.config.batDistraction            |  config  | Whether bats are allowed in L3 and L4.                                                           |
|  ⛔   |   🔴   | do2.config.bc.balancedTnTDiveLoot    |  config  | Whether to balance the TnT dive loot more.                                                       |
|  ⛔   |   🔴   | do2.config.bc.l2ShipTreasureLine     |  config  | Whether treasure can drop on L2's ship when player is on L2.                                     |
|  ⛔   |   🔴   | do2.config.bc.lessLootMaxClank       |  config  | Whether to have Max Clank have a 50% chance to stop loot.                                        |
|  ⛔   |   🔴   | do2.config.bc.snowHazard             |  config  | Whether to use a new hazard in the hidden L1 shortcut.                                           |
|  ⛔   |   🔴   | do2.config.bc.staircaseEmbers        |  config  | Whether embers should drop on each staircase.                                                    |
|  ⛔   |   🔴   | do2.config.bc.suitUpRes              |  config  | Whether the card Suit Up grants resistance.                                                      |
|  ❌   |   🟢   | do2.config.dungeonDifficulty         |  config  | Used to remember what difficulty the player last played at.                                      |
|  ⛔   |   🔴   | do2.config.eggRewards                |  config  | What rewards finding easter eggs give you.                                                       |
|  ⛔   |   🔴   | do2.config.endermiteCount            |  config  | How many endermites can exist in Level 2.                                                        |
|  ⛔   |   🔴   | do2.config.fastReset                 |  config  | Whether to quickly reset the dungeon upon game ending.                                           |
|  ❌   |   🔴   | do2.config.forceFood                 |  config  | Whether to force the player's food at saturation level to be a certain value.                    |
|  ⛔   |   🔴   | do2.config.forceGamemode             |  config  | Whether to try to force player's gamemode upon game start/stop.                                  |
|  ⛔   |   🔴   | do2.config.fr.cakeGauntlet           |  config  | Whether to set the cake in the death gauntlet to full each run.                                  |
|  ⛔   |   🔴   | do2.config.fr.refillBerries          |  config  | Whether to refill all berry bushes each run.                                                     |
|  ⛔   |   🔴   | do2.config.fr.resetComposters        |  config  | Whether to empty out all composters each run.                                                    |
|  ⛔   |   🔴   | do2.config.fr.teleportKillers        |  config  | Whether the killers should be spread out for each run.                                           |
|  ⛔   |   🔴   | do2.config.maxClankTreasure          |  config  | Whether treasure can drop after max clank is reached.                                            |
|  ⛔   |   🔴   | do2.config.ec.controlSummons         |  config  | Whether to use legacy system or the new level controller.                                        |
|  ⛔   |   🔴   | do2.config.ec.level1Zones            |  config  | Whether zones should be used on L1.                                                              |
|  ⛔   |   🔴   | do2.config.ec.level2Zones            |  config  | Whether zones should be used on L2.                                                              |
|  ⛔   |   🔴   | do2.config.ec.level4Zones            |  config  | Whether zones should be used on L4.                                                              |
|  ⛔   |   🔴   | do2.config.ec.levelEditing           |  config  | What level the interface is displaying to be edited.                                             |
|  ✅   |   🔴   | do2.config.ec.levelZoneMobCount      |  config  | Used to control how many mobs are in each zone.                                                  |
|  ⛔   |   🔴   | do2.config.nightTimeChance           |  config  | The chance for the dungeon to set the time to night.                                             |
|  ⛔   |   🔴   | do2.config.refillDungeonType         |  config  | The type decides how should the dungeon be refilled.                                             |
|  ❌   |   🔴   | do2.config.targetFoodLevel           |  config  | How many food bars the player's food should be.                                                  |
|  ❌   |   🔴   | do2.config.targetSaturationLevel     |  config  | How many saturation levels the player's saturation should be.                                    |
|  ⛔   |   🔴   | do2.config.tickRate                  |  config  | How many minecraft ticks, before the majority of the datapack runs.                              |
|  ❌   |   🔴   | do2.config.ticksPerSecond            |  config  | How many ticks the server runs per second.                                                       |
|  ❌   |   🔴   | do2.config.useWorldCycle             |  config  | Used to control whether daylight and weather cycles are enabled.                                 |
|  ⛔   |   🔴   | do2.config.vexTracking               |  config  | Whether vex tracks players at ALL times.                                                         |
|  ⛔   |   🟢   | do2.logs.cards                       |  config  | How strongly players want the logs relating to; Cards                                            |
|  ⛔   |   🟢   | do2.logs.clank                       |  config  | How strongly players want the logs relating to; Clank                                            |
|  ⛔   |   🟢   | do2.logs.datapack_setup              |  config  | How strongly players want the logs relating to; Datapack Setup                                   |
|  ⛔   |   🟢   | do2.logs.dropper_room                |  config  | How strongly players want the logs relating to; Dropper Room                                     |
|  ⛔   |   🟢   | do2.logs.dungeon_setup               |  config  | How strongly players want the logs relating to; Dungeon Setup                                    |
|  ⛔   |   🟢   | do2.logs.embers                      |  config  | How strongly players want the logs relating to; Embers                                           |
|  ⛔   |   🟢   | do2.logs.evokers                     |  config  | How strongly players want the logs relating to; Evokers                                          |
|  ⛔   |   🟢   | do2.logs.gamestate                   |  config  | How strongly players want the logs relating to; Gamestate                                        |
|  ⛔   |   🟢   | do2.logs.hazard                      |  config  | How strongly players want the logs relating to; Hazard                                           |
|  ⛔   |   🟢   | do2.logs.pickups                     |  config  | How strongly players want the logs relating to; Pickups                                          |
|  ⛔   |   🟢   | do2.logs.player_actions              |  config  | How strongly players want the logs relating to; Player Actions                                   |
|  ⛔   |   🟢   | do2.logs.spam                        |  config  | How strongly players want the logs relating to; Spam                                             |
|  ⛔   |   🟢   | do2.logs.treasure                    |  config  | How strongly players want the logs relating to; Treasure                                         |
|  ✅   |   🟤   | do2.cards.bought.1TM                 | current  | How many times the 'buy 1 tome' was purchased in total.                                          |
|  ✅   |   🟤   | do2.cards.bought.3TM                 | current  | How many times the 'buy 3 tomes' was purchased in total.                                         |
|  ✅   |   🟤   | do2.cards.bought.5TM                 | current  | How many times the 'buy 5 tomes' was purchased in total.                                         |
|  ✅   |   🔴   | do2.run.active                       | current  | Whether the dungeon is currently active or loading.                                              |
|  ✅   |   🟤   | do2.run.cards.available.ADR          | current  | Whether the card adrenaline rush was available to purchase this run.                             |
|  ✅   |   🟤   | do2.run.cards.available.BES          | current  | Whether the card beast sense was available to purchase this run.                                 |
|  ✅   |   🟤   | do2.run.cards.available.BRI          | current  | Whether the card brilliance was available to purchase this run.                                  |
|  ✅   |   🟤   | do2.run.cards.available.BST          | current  | Whether the card bounding strides was available to purchase this run.                            |
|  ✅   |   🟤   | do2.run.cards.available.CHS          | current  | Whether the card chill step was available to purchase this run.                                  |
|  ✅   |   🟤   | do2.run.cards.available.COS          | current  | Whether the card cold snap was available to purchase this run.                                   |
|  ✅   |   🟤   | do2.run.cards.available.DEF          | current  | Whether the card deepfrost was available to purchase this run.                                   |
|  ✅   |   🟤   | do2.run.cards.available.DUR          | current  | Whether the card dungeon repairs was available to purchase this run.                             |
|  ✅   |   🟤   | do2.run.cards.available.EES          | current  | Whether the card eerie silence was available to purchase this run.                               |
|  ✅   |   🟤   | do2.run.cards.available.EOP          | current  | Whether the card eyes on the prize was available to purchase this run.                           |
|  ✅   |   🟤   | do2.run.cards.available.EVA          | current  | Whether the card evasion was available to purchase this run.                                     |
|  ✅   |   🟤   | do2.run.cards.available.FBS          | current  | Whether the card fuzzy bunny slippers was available to purchase this run.                        |
|  ✅   |   🟤   | do2.run.cards.available.FRF          | current  | Whether the card frost focus was available to purchase this run.                                 |
|  ✅   |   🟤   | do2.run.cards.available.LAS          | current  | Whether the card loot and scoot was available to purchase this run.                              |
|  ✅   |   🟤   | do2.run.cards.available.NIL          | current  | Whether the card nimble looting was available to purchase this run.                              |
|  ✅   |   🟤   | do2.run.cards.available.PIB          | current  | Whether the card pirates booty was available to purchase this run.                               |
|  ✅   |   🟤   | do2.run.cards.available.QUI          | current  | Whether the card quick step was available to purchase this run.                                  |
|  ✅   |   🟤   | do2.run.cards.available.REC          | current  | Whether the card reckless charge was available to purchase this run.                             |
|  ✅   |   🟤   | do2.run.cards.available.SAG          | current  | Whether the card smash and grab was available to purchase this run.                              |
|  ✅   |   🟤   | do2.run.cards.available.SEW          | current  | Whether the card second wind was available to purchase this run.                                 |
|  ✅   |   🟤   | do2.run.cards.available.SIR          | current  | Whether the card silent runner was available to purchase this run.                               |
|  ✅   |   🟤   | do2.run.cards.available.SPR          | current  | Whether the card speed runner was available to purchase this run.                                |
|  ✅   |   🟤   | do2.run.cards.available.SPT          | current  | Whether the card sprint was available to purchase this run.                                      |
|  ✅   |   🟤   | do2.run.cards.available.SUU          | current  | Whether the card suit up was available to purchase this run.                                     |
|  ✅   |   🟤   | do2.run.cards.available.SWA          | current  | Whether the card swagger was available to purchase this run.                                     |
|  ✅   |   🟤   | do2.run.cards.available.TRL          | current  | Whether the card tread lightly was available to purchase this run.                               |
|  ✅   |   🟤   | do2.run.cards.bought.1TM             | current  | Whether the 'buy 1 tome' was purchased this run.                                                 |
|  ✅   |   🟤   | do2.run.cards.bought.3TM             | current  | Whether the 'buy 3 tomes' was purchased this run.                                                |
|  ✅   |   🟤   | do2.run.cards.bought.5TM             | current  | Whether the 'buy 5 tome' was purchased this run.                                                 |
|  ✅   |   🟤   | do2.run.cards.bought.ADR             | current  | Whether the card adrenaline rush was purchased this run.                                         |
|  ✅   |   🟤   | do2.run.cards.bought.BES             | current  | Whether the card beast sense was purchased this run.                                             |
|  ✅   |   🟤   | do2.run.cards.bought.BRI             | current  | Whether the card brilliance was purchased this run.                                              |
|  ✅   |   🟤   | do2.run.cards.bought.BST             | current  | Whether the card bounding strides was purchased this run.                                        |
|  ✅   |   🟤   | do2.run.cards.bought.CHS             | current  | Whether the card chill step was purchased this run.                                              |
|  ✅   |   🟤   | do2.run.cards.bought.COS             | current  | Whether the card cold snap was purchased this run.                                               |
|  ✅   |   🟤   | do2.run.cards.bought.DEF             | current  | Whether the card deepfrost was purchased this run.                                               |
|  ✅   |   🟤   | do2.run.cards.bought.DUL             | current  | Whether the card dungeon lackey was purchased this run.                                          |
|  ✅   |   🟤   | do2.run.cards.bought.DUR             | current  | Whether the card dungeon repairs was purchased this run.                                         |
|  ✅   |   🟤   | do2.run.cards.bought.EES             | current  | Whether the card eerie silence was purchased this run.                                           |
|  ✅   |   🟤   | do2.run.cards.bought.EMS             | current  | Whether the card ember seeker was purchased this run.                                            |
|  ✅   |   🟤   | do2.run.cards.bought.EOP             | current  | Whether the card eyes on the prize was purchased this run.                                       |
|  ✅   |   🟤   | do2.run.cards.bought.EVA             | current  | Whether the card evasion was purchased this run.                                                 |
|  ✅   |   🟤   | do2.run.cards.bought.FBS             | current  | Whether the card fuzzy bunny slippers was purchased this run.                                    |
|  ✅   |   🟤   | do2.run.cards.bought.FRF             | current  | Whether the card frost focus was purchased this run.                                             |
|  ✅   |   🟤   | do2.run.cards.bought.LAS             | current  | Whether the card loot and scoot was purchased this run.                                          |
|  ✅   |   🟤   | do2.run.cards.bought.MOC             | current  | Whether the card moment of clarity was purchased this run.                                       |
|  ✅   |   🟤   | do2.run.cards.bought.NIL             | current  | Whether the card nimble looting was purchased this run.                                          |
|  ✅   |   🟤   | do2.run.cards.bought.P2W             | current  | Whether the card pay to win was purchased this run.                                              |
|  ✅   |   🟤   | do2.run.cards.bought.PCP             | current  | Whether the card pork chop power was purchased this run.                                         |
|  ✅   |   🟤   | do2.run.cards.bought.PIB             | current  | Whether the card pirates booty was purchased this run.                                           |
|  ✅   |   🟤   | do2.run.cards.bought.QUI             | current  | Whether the card quick step was purchased this run.                                              |
|  ✅   |   🟤   | do2.run.cards.bought.REC             | current  | Whether the card reckless charge was purchased this run.                                         |
|  ✅   |   🟤   | do2.run.cards.bought.SAG             | current  | Whether the card smash and grab was purchased this run.                                          |
|  ✅   |   🟤   | do2.run.cards.bought.SEW             | current  | Whether the card second wind was purchased this run.                                             |
|  ✅   |   🟤   | do2.run.cards.bought.SIR             | current  | Whether the card silent runner was purchased this run.                                           |
|  ✅   |   🟤   | do2.run.cards.bought.SNE             | current  | Whether the card sneak was purchased this run.                                                   |
|  ✅   |   🟤   | do2.run.cards.bought.SPR             | current  | Whether the card speed runner was purchased this run.                                            |
|  ✅   |   🟤   | do2.run.cards.bought.SPT             | current  | Whether the card sprint was purchased this run.                                                  |
|  ✅   |   🟤   | do2.run.cards.bought.STA             | current  | Whether the card stability was purchased this run.                                               |
|  ✅   |   🟤   | do2.run.cards.bought.STU             | current  | Whether the card stumble was purchased this run.                                                 |
|  ✅   |   🟤   | do2.run.cards.bought.SUU             | current  | Whether the card suit up was purchased this run.                                                 |
|  ✅   |   🟤   | do2.run.cards.bought.SWA             | current  | Whether the card swagger was purchased this run.                                                 |
|  ✅   |   🟤   | do2.run.cards.bought.TAA             | current  | Whether the card tactical approach was purchased this run.                                       |
|  ✅   |   🟤   | do2.run.cards.bought.TRH             | current  | Whether the card treasure hunter was purchased this run.                                         |
|  ✅   |   🟤   | do2.run.cards.bought.TRL             | current  | Whether the card tread lightly was purchased this run.                                           |
|  ✅   |   🟤   | do2.run.cards.deck.ADR               | current  | How many of the card adrenaline rush was in the deck this run.                                   |
|  ✅   |   🟤   | do2.run.cards.deck.BES               | current  | How many of the card beast sense was in the deck this run.                                       |
|  ✅   |   🟤   | do2.run.cards.deck.BRI               | current  | How many of the card brilliance was in the deck this run.                                        |
|  ✅   |   🟤   | do2.run.cards.deck.BST               | current  | How many of the card bounding strides was in the deck this run.                                  |
|  ✅   |   🟤   | do2.run.cards.deck.CHS               | current  | How many of the card chill step was in the deck this run.                                        |
|  ✅   |   🟤   | do2.run.cards.deck.COS               | current  | How many of the card cold snap was in the deck this run.                                         |
|  ✅   |   🟤   | do2.run.cards.deck.DEF               | current  | How many of the card deepfrost was in the deck this run.                                         |
|  ✅   |   🟤   | do2.run.cards.deck.DUL               | current  | How many of the card dungeon lackey was in the deck this run.                                    |
|  ✅   |   🟤   | do2.run.cards.deck.DUR               | current  | How many of the card dungeon repairs was in the deck this run.                                   |
|  ✅   |   🟤   | do2.run.cards.deck.EES               | current  | How many of the card eerie silence was in the deck this run.                                     |
|  ✅   |   🟤   | do2.run.cards.deck.EMS               | current  | How many of the card ember seeker was in the deck this run.                                      |
|  ✅   |   🟤   | do2.run.cards.deck.EOP               | current  | How many of the card eyes on the prize was in the deck this run.                                 |
|  ✅   |   🟤   | do2.run.cards.deck.EVA               | current  | How many of the card evasion was in the deck this run.                                           |
|  ✅   |   🟤   | do2.run.cards.deck.FBS               | current  | How many of the card fuzzy bunny slippers was in the deck this run.                              |
|  ✅   |   🟤   | do2.run.cards.deck.FRF               | current  | How many of the card frost focus was in the deck this run.                                       |
|  ✅   |   🟤   | do2.run.cards.deck.LAS               | current  | How many of the card loot and scoot was in the deck this run.                                    |
|  ✅   |   🟤   | do2.run.cards.deck.MOC               | current  | How many of the card moment of clarity was in the deck this run.                                 |
|  ✅   |   🟤   | do2.run.cards.deck.NIL               | current  | How many of the card nimble looting was in the deck this run.                                    |
|  ✅   |   🟤   | do2.run.cards.deck.P2W               | current  | How many of the card pay to win was in the deck this run.                                        |
|  ✅   |   🟤   | do2.run.cards.deck.PCP               | current  | How many of the card pork chop power was in the deck this run.                                   |
|  ✅   |   🟤   | do2.run.cards.deck.PIB               | current  | How many of the card pirates booty was in the deck this run.                                     |
|  ✅   |   🟤   | do2.run.cards.deck.QUI               | current  | How many of the card quick step was in the deck this run.                                        |
|  ✅   |   🟤   | do2.run.cards.deck.REC               | current  | How many of the card reckless charge was in the deck this run.                                   |
|  ✅   |   🟤   | do2.run.cards.deck.SAG               | current  | How many of the card smash and grab was in the deck this run.                                    |
|  ✅   |   🟤   | do2.run.cards.deck.SEW               | current  | How many of the card second wind was in the deck this run.                                       |
|  ✅   |   🟤   | do2.run.cards.deck.SIR               | current  | How many of the card silent runner was in the deck this run.                                     |
|  ✅   |   🟤   | do2.run.cards.deck.SNE               | current  | How many of the card sneak was in the deck this run.                                             |
|  ✅   |   🟤   | do2.run.cards.deck.SPR               | current  | How many of the card speed runner was in the deck this run.                                      |
|  ✅   |   🟤   | do2.run.cards.deck.SPT               | current  | How many of the card sprint was in the deck this run.                                            |
|  ✅   |   🟤   | do2.run.cards.deck.STA               | current  | How many of the card stability was in the deck this run.                                         |
|  ✅   |   🟤   | do2.run.cards.deck.SUU               | current  | How many of the card suit up was in the deck this run.                                           |
|  ✅   |   🟤   | do2.run.cards.deck.SWA               | current  | How many of the card swagger was in the deck this run.                                           |
|  ✅   |   🟤   | do2.run.cards.deck.TAA               | current  | How many of the card tactical approach was in the deck this run.                                 |
|  ✅   |   🟤   | do2.run.cards.deck.TRH               | current  | How many of the card treasure hunter was in the deck this run.                                   |
|  ✅   |   🟤   | do2.run.cards.deck.TRL               | current  | How many of the card tread lightly was in the deck this run.                                     |
|  ✅   |   🟣   | do2.run.cards.deck.commons           | current  | How many common cards are in the deck this run.                                                  |
|  ✅   |   🟣   | do2.run.cards.deck.ethereals         | current  | How many ethereal cards are in the deck this run.                                                |
|  ✅   |   🟣   | do2.run.cards.deck.legendaries       | current  | How many legendary cards are in the deck this run.                                               |
|  ✅   |   🟣   | do2.run.cards.deck.permanents        | current  | How many permanents cards are in the deck this run.                                              |
|  ✅   |   🟣   | do2.run.cards.deck.rares             | current  | How many rare cards are in the deck this run.                                                    |
|  ✅   |   🟣   | do2.run.cards.deck.total             | current  | How many cards are in the deck this run.                                                         |
|  ✅   |   🟣   | do2.run.cards.deck.uncommons         | current  | How many uncommon cards are in the deck this run.                                                |
|  ✅   |   🟤   | do2.run.cards.played.ADR             | current  | How many of the card adrenaline rush have been played this run.                                  |
|  ✅   |   🟤   | do2.run.cards.played.BES             | current  | How many of the card beast sense have been played this run.                                      |
|  ✅   |   🟤   | do2.run.cards.played.BRI             | current  | How many of the card brilliance have been played this run.                                       |
|  ✅   |   🟤   | do2.run.cards.played.BST             | current  | How many of the card bounding strides have been played this run.                                 |
|  ✅   |   🟤   | do2.run.cards.played.CHS             | current  | How many of the card chill step have been played this run.                                       |
|  ✅   |   🟤   | do2.run.cards.played.COS             | current  | How many of the card cold snap have been played this run.                                        |
|  ✅   |   🟤   | do2.run.cards.played.DEF             | current  | How many of the card deepfrost have been played this run.                                        |
|  ✅   |   🟤   | do2.run.cards.played.DUL             | current  | How many of the card dungeon lackey have been played this run.                                   |
|  ✅   |   🟤   | do2.run.cards.played.DUR             | current  | How many of the card dungeon repairs have been played this run.                                  |
|  ✅   |   🟤   | do2.run.cards.played.EES             | current  | How many of the card eerie silence have been played this run.                                    |
|  ✅   |   🟤   | do2.run.cards.played.EMS             | current  | How many of the card ember seeker have been played this run.                                     |
|  ✅   |   🟤   | do2.run.cards.played.EOP             | current  | How many of the card eyes on the prize have been played this run.                                |
|  ✅   |   🟤   | do2.run.cards.played.EVA             | current  | How many of the card evasion have been played this run.                                          |
|  ✅   |   🟤   | do2.run.cards.played.FBS             | current  | How many of the card fuzzy bunny slippers have been played this run.                             |
|  ✅   |   🟤   | do2.run.cards.played.FRF             | current  | How many of the card frost focus have been played this run.                                      |
|  ✅   |   🟤   | do2.run.cards.played.LAS             | current  | How many of the card loot and scoot have been played this run.                                   |
|  ✅   |   🟤   | do2.run.cards.played.MOC             | current  | How many of the card moment of clarity have been played this run.                                |
|  ✅   |   🟤   | do2.run.cards.played.NIL             | current  | How many of the card nimble looting have been played this run.                                   |
|  ✅   |   🟤   | do2.run.cards.played.P2W             | current  | How many of the card pay to win have been played this run.                                       |
|  ✅   |   🟤   | do2.run.cards.played.PCP             | current  | How many of the card pork chop power have been played this run.                                  |
|  ✅   |   🟤   | do2.run.cards.played.PIB             | current  | How many of the card pirates booty have been played this run.                                    |
|  ✅   |   🟤   | do2.run.cards.played.QUI             | current  | How many of the card quick step have been played this run.                                       |
|  ✅   |   🟤   | do2.run.cards.played.REC             | current  | How many of the card reckless charge have been played this run.                                  |
|  ✅   |   🟤   | do2.run.cards.played.SAG             | current  | How many of the card smash and grab have been played this run.                                   |
|  ✅   |   🟤   | do2.run.cards.played.SEW             | current  | How many of the card second wind have been played this run.                                      |
|  ✅   |   🟤   | do2.run.cards.played.SIR             | current  | How many of the card silent runner have been played this run.                                    |
|  ✅   |   🟤   | do2.run.cards.played.SNE             | current  | How many of the card sneak have been played this run.                                            |
|  ✅   |   🟤   | do2.run.cards.played.SPR             | current  | How many of the card speed runner have been played this run.                                     |
|  ✅   |   🟤   | do2.run.cards.played.SPT             | current  | How many of the card sprint have been played this run.                                           |
|  ✅   |   🟤   | do2.run.cards.played.STA             | current  | How many of the card stability have been played this run.                                        |
|  ✅   |   🟤   | do2.run.cards.played.STU             | current  | How many of the card stumble have been played this run.                                          |
|  ✅   |   🟤   | do2.run.cards.played.SUU             | current  | How many of the card suit up have been played this run.                                          |
|  ✅   |   🟤   | do2.run.cards.played.SWA             | current  | How many of the card swagger have been played this run.                                          |
|  ✅   |   🟤   | do2.run.cards.played.TAA             | current  | How many of the card tactical approach have been played this run.                                |
|  ✅   |   🟤   | do2.run.cards.played.TRH             | current  | How many of the card treasure hunter have been played this run.                                  |
|  ✅   |   🟤   | do2.run.cards.played.TRL             | current  | How many of the card tread lightly have been played this run.                                    |
|  ✅   |   🟣   | do2.run.convertedArtifake            | current  | Whether the artifact has been converted into an artifake this run.                               |
|  ✅   |   🔴   | do2.run.deepest_floor                | current  | The deepest floor the artifact was submitted on.                                                 |
|  ✅   |   🔴   | do2.run.difficulty                   | current  | The difficulty the run is playing on.                                                            |
|  ✅   |   🔵   | do2.run.foundArtifact                | current  | Whether the artifact has been found this run.                                                    |
|  ✅   |   🔵   | do2.run.has_died                     | current  | Whether the runner has died or not.                                                              |
|  ✅   |   🔵   | do2.run.has_won                      | current  | Whether the runner has won or not.                                                               |
|  ✅   |   🟤   | do2.run.items.bombs                  | current  | How many Bombs collected this run.                                                               |
|  ✅   |   🟤   | do2.run.items.bone_meals             | current  | How many Bone Meals collected this run.                                                          |
|  ✅   |   🟤   | do2.run.items.coins                  | current  | How many Coins collected this run.                                                               |
|  ✅   |   🟤   | do2.run.items.crowns                 | current  | How many Crowns collected this run.                                                              |
|  ✅   |   🟤   | do2.run.items.embers                 | current  | How many Frost Embers collected this run.                                                        |
|  ✅   |   🟤   | do2.run.items.glow_berries           | current  | How many Glow Berries collected this run.                                                        |
|  ✅   |   🟤   | do2.run.items.key_2                  | current  | How many L2 Keys collected this run.                                                             |
|  ✅   |   🟤   | do2.run.items.key_3                  | current  | How many L3 Keys collected this run.                                                             |
|  ✅   |   🟤   | do2.run.items.key_4                  | current  | How many L4 Keys collected this run.                                                             |
|  ✅   |   🟤   | do2.run.items.kits                   | current  | How many Rusty Repair Kits collected this run.                                                   |
|  ✅   |   🟤   | do2.run.items.pork_chops             | current  | How many cooked porkchops collected this run.                                                    |
|  ✅   |   🟤   | do2.run.items.pumpkins               | current  | How many Pumpkins collected this run.                                                            |
|  ✅   |   🟤   | do2.run.items.sweet_berries          | current  | How many Sweet Berries collected this run.                                                       |
|  ✅   |   🔴   | do2.run.player_deaths                | current  | How many players have died this run.                                                             |
|  ✅   |   🔴   | do2.run.players                      | current  | How many players are playing this run.                                                           |
|  ✅   |   🔴   | do2.run.seconds                      | current  | How long the run has been running for.                                                           |
|  ✅   |   🔴   | do2.run.systems.clank.blocked        | current  | How much clank was blocked this run.                                                             |
|  ✅   |   🔴   | do2.run.systems.clank.generated      | current  | How much clank was generated this run.                                                           |
|  ✅   |   🔴   | do2.run.systems.embers.released      | current  | How much embers was released this run.                                                           |
|  ✅   |   🔴   | do2.run.systems.hazard.activated     | current  | How much hazard was activated this run.                                                          |
|  ✅   |   🔴   | do2.run.systems.hazard.blocked       | current  | How much hazard was blocked this run.                                                            |
|  ✅   |   🔴   | do2.run.systems.hazard.generated     | current  | How much hazard was generated this run.                                                          |
|  ✅   |   🔴   | do2.run.systems.maxclank.released    | current  | How much clank surpassed max clank this run.                                                     |
|  ✅   |   🔴   | do2.run.systems.treasure.released    | current  | How much treasure was released this run.                                                         |
|  ✅   |   🔵   | do2.run.threecoursemeal              | current  | Used to track how many UNIQUE foods the player has eaten this run.                               |
|  ✅   |   🔴   | do2.run.ticks                        | current  | Counting until 20th tick to add a second.                                                        |
|  ✅   |   🔴   | do2.run.timeWithNoPlayers            | current  | Amount of time the dungeon hasn't had active players.                                            |
|  ✅   |   🔴   | do2.tests.all_filters                |  tests   | Used to temporarily test if all compass filters exist.                                           |
|  ✅   |   🔴   | do2.tests.all_killers_alive          |  tests   | Used to temporarily test if all other killers exist.                                             |
|  ✅   |   🔴   | do2.tests.all_lodestone_spots        |  tests   | Used to temporarily test if all lodestones exist.                                                |
|  ✅   |   🔴   | do2.tests.all_markers_alive          |  tests   | Used to temporarily test if all teleport markers entities exist.                                 |
|  ✅   |   🔴   | do2.tests.all_minecart_spots         |  tests   | Used to temporarily test if all minecarts exist.                                                 |
|  ✅   |   🔴   | do2.tests.all_ravagers_alive         |  tests   | Used to temporarily test if all ravagers exist.                                                  |
|  ✅   |   🔴   | do2.tests.all_wardens_alive          |  tests   | Used to temporarily test if all wardens exist.                                                   |
|  ✅   |   🔴   | do2.tests.amountOfRavagers           |  tests   | used to count how many ravagers already are summoned in order to generate an numbered name.      |
|  ✅   |   🔴   | do2.tests.arrayIndex                 |  tests   | Used for array manipulation for Mob Controller.                                                  |
|  ✅   |   🔴   | do2.tests.doesTangoCamExist          |  tests   | Used to temporarily test if TangoCam exists.                                                     |
|  ✅   |   🟢   | do2.artifacts.ASV                    |  totals  | How many ASV artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.BAP                    |  totals  | How many BAP artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.BED                    |  totals  | How many BED artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.CF1                    |  totals  | How many CF1 artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.CUS                    |  totals  | How many CUS artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.DLP                    |  totals  | How many DLP artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.GDE                    |  totals  | How many GDE artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.GGR                    |  totals  | How many GGR artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.GGS                    |  totals  | How many GGS artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.HAY                    |  totals  | How many HAY artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.HGT                    |  totals  | How many HGT artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.HST                    |  totals  | How many HST artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.HYB                    |  totals  | How many HYB artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.JSS                    |  totals  | How many JSS artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.KNH                    |  totals  | How many KNH artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.MDM                    |  totals  | How many MDM artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.MGW                    |  totals  | How many MGW artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.MKY                    |  totals  | How many MKY artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.OFP                    |  totals  | How many OFP artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.PCL                    |  totals  | How many PCL artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.PPS                    |  totals  | How many PPS artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.PWS                    |  totals  | How many PWS artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.SHD                    |  totals  | How many SHD artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.SKA                    |  totals  | How many SKA artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.SPS                    |  totals  | How many SPS artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.THL                    |  totals  | How many THL artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.TSL                    |  totals  | How many TSL artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifacts.WGG                    |  totals  | How many WGG artifacts found.                                                                    |
|  ✅   |   🟢   | do2.artifakes.ASV                    |  totals  | How many ASV artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.BAP                    |  totals  | How many BAP artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.BED                    |  totals  | How many BED artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.CF1                    |  totals  | How many CF1 artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.CUS                    |  totals  | How many CUS artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.DLP                    |  totals  | How many DLP artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.GDE                    |  totals  | How many GDE artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.GGR                    |  totals  | How many GGR artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.GGS                    |  totals  | How many GGS artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.HAY                    |  totals  | How many HAY artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.HGT                    |  totals  | How many HGT artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.HST                    |  totals  | How many HST artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.HYB                    |  totals  | How many HYB artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.JSS                    |  totals  | How many JSS artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.KNH                    |  totals  | How many KNH artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.MDM                    |  totals  | How many MDM artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.MGW                    |  totals  | How many MGW artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.MKY                    |  totals  | How many MKY artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.OFP                    |  totals  | How many OFP artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.PCL                    |  totals  | How many PCL artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.PPS                    |  totals  | How many PPS artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.PWS                    |  totals  | How many PWS artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.SHD                    |  totals  | How many SHD artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.SKA                    |  totals  | How many SKA artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.SPS                    |  totals  | How many SPS artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.THL                    |  totals  | How many THL artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.TSL                    |  totals  | How many TSL artifacts have been converted.                                                      |
|  ✅   |   🟢   | do2.artifakes.WGG                    |  totals  | How many WGG artifacts have been converted.                                                      |
|  ✅   |   🟤   | do2.cards.available.ADR              |  totals  | How many times the card adrenaline rush was available to purchase in total.                      |
|  ✅   |   🟤   | do2.cards.available.BES              |  totals  | How many times the card beast sense was available to purchase in total.                          |
|  ✅   |   🟤   | do2.cards.available.BRI              |  totals  | How many times the card brilliance was available to purchase in total.                           |
|  ✅   |   🟤   | do2.cards.available.BST              |  totals  | How many times the card bounding strides was available to purchase in total.                     |
|  ✅   |   🟤   | do2.cards.available.CHS              |  totals  | How many times the card chill step was available to purchase in total.                           |
|  ✅   |   🟤   | do2.cards.available.COS              |  totals  | How many times the card cold snap was available to purchase in total.                            |
|  ✅   |   🟤   | do2.cards.available.DEF              |  totals  | How many times the card deepfrost was available to purchase in total.                            |
|  ✅   |   🟤   | do2.cards.available.DUR              |  totals  | How many times the card dungeon repairs was available to purchase in total.                      |
|  ✅   |   🟤   | do2.cards.available.EES              |  totals  | How many times the card eerie silence was available to purchase in total.                        |
|  ✅   |   🟤   | do2.cards.available.EOP              |  totals  | How many times the card eyes on the prize was available to purchase in total.                    |
|  ✅   |   🟤   | do2.cards.available.EVA              |  totals  | How many times the card evasion was available to purchase in total.                              |
|  ✅   |   🟤   | do2.cards.available.FBS              |  totals  | How many times the card fuzzy bunny slippers was available to purchase in total.                 |
|  ✅   |   🟤   | do2.cards.available.FRF              |  totals  | How many times the card frost focus was available to purchase in total.                          |
|  ✅   |   🟤   | do2.cards.available.LAS              |  totals  | How many times the card loot and scoot was available to purchase in total.                       |
|  ✅   |   🟤   | do2.cards.available.NIL              |  totals  | How many times the card nimble looting was available to purchase in total.                       |
|  ✅   |   🟤   | do2.cards.available.PIB              |  totals  | How many times the card pirates booty was available to purchase in total.                        |
|  ✅   |   🟤   | do2.cards.available.QUI              |  totals  | How many times the card quick step was available to purchase in total.                           |
|  ✅   |   🟤   | do2.cards.available.REC              |  totals  | How many times the card reckless charge was available to purchase in total.                      |
|  ✅   |   🟤   | do2.cards.available.SAG              |  totals  | How many times the card smash and grab was available to purchase in total.                       |
|  ✅   |   🟤   | do2.cards.available.SEW              |  totals  | How many times the card second wind was available to purchase in total.                          |
|  ✅   |   🟤   | do2.cards.available.SIR              |  totals  | How many times the card silent runner was available to purchase in total.                        |
|  ✅   |   🟤   | do2.cards.available.SPR              |  totals  | How many times the card speed runner was available to purchase in total.                         |
|  ✅   |   🟤   | do2.cards.available.SPT              |  totals  | How many times the card sprint was available to purchase in total.                               |
|  ✅   |   🟤   | do2.cards.available.SUU              |  totals  | How many times the card suit up was available to purchase in total.                              |
|  ✅   |   🟤   | do2.cards.available.SWA              |  totals  | How many times the card swagger was available to purchase in total.                              |
|  ✅   |   🟤   | do2.cards.available.TRL              |  totals  | How many times the card tread lightly was available to purchase in total.                        |
|  ✅   |   🟤   | do2.cards.bought.ADR                 |  totals  | How many times the card adrenaline rush has been purchased in total.                             |
|  ✅   |   🟤   | do2.cards.bought.BES                 |  totals  | How many times the card beast sense has been purchased in total.                                 |
|  ✅   |   🟤   | do2.cards.bought.BRI                 |  totals  | How many times the card brilliance has been purchased in total.                                  |
|  ✅   |   🟤   | do2.cards.bought.BST                 |  totals  | How many times the card bounding strides has been purchased in total.                            |
|  ✅   |   🟤   | do2.cards.bought.CHS                 |  totals  | How many times the card chill step has been purchased in total.                                  |
|  ✅   |   🟤   | do2.cards.bought.COS                 |  totals  | How many times the card cold snap has been purchased in total.                                   |
|  ✅   |   🟤   | do2.cards.bought.DEF                 |  totals  | How many times the card deepfrost has been purchased in total.                                   |
|  ✅   |   🟤   | do2.cards.bought.DUL                 |  totals  | How many times the card dungeon lackey has been purchased in total.                              |
|  ✅   |   🟤   | do2.cards.bought.DUR                 |  totals  | How many times the card dungeon repairs has been purchased in total.                             |
|  ✅   |   🟤   | do2.cards.bought.EES                 |  totals  | How many times the card eerie silence has been purchased in total.                               |
|  ✅   |   🟤   | do2.cards.bought.EMS                 |  totals  | How many times the card ember seeker has been purchased in total.                                |
|  ✅   |   🟤   | do2.cards.bought.EOP                 |  totals  | How many times the card eyes on the prize has been purchased in total.                           |
|  ✅   |   🟤   | do2.cards.bought.EVA                 |  totals  | How many times the card evasion has been purchased in total.                                     |
|  ✅   |   🟤   | do2.cards.bought.FBS                 |  totals  | How many times the card fuzzy bunny slippers has been purchased in total.                        |
|  ✅   |   🟤   | do2.cards.bought.FRF                 |  totals  | How many times the card frost focus has been purchased in total.                                 |
|  ✅   |   🟤   | do2.cards.bought.LAS                 |  totals  | How many times the card loot and scoot has been purchased in total.                              |
|  ✅   |   🟤   | do2.cards.bought.MOC                 |  totals  | How many times the card moment of clarity has been purchased in total.                           |
|  ✅   |   🟤   | do2.cards.bought.NIL                 |  totals  | How many times the card nimble looting has been purchased in total.                              |
|  ✅   |   🟤   | do2.cards.bought.P2W                 |  totals  | How many times the card pay to win has been purchased in total.                                  |
|  ✅   |   🟤   | do2.cards.bought.PCP                 |  totals  | How many times the card pork chop power has been purchased in total.                             |
|  ✅   |   🟤   | do2.cards.bought.PIB                 |  totals  | How many times the card pirates booty has been purchased in total.                               |
|  ✅   |   🟤   | do2.cards.bought.QUI                 |  totals  | How many times the card quick step has been purchased in total.                                  |
|  ✅   |   🟤   | do2.cards.bought.REC                 |  totals  | How many times the card reckless charge has been purchased in total.                             |
|  ✅   |   🟤   | do2.cards.bought.SAG                 |  totals  | How many times the card smash and grab has been purchased in total.                              |
|  ✅   |   🟤   | do2.cards.bought.SEW                 |  totals  | How many times the card second wind has been purchased in total.                                 |
|  ✅   |   🟤   | do2.cards.bought.SIR                 |  totals  | How many times the card silent runner has been purchased in total.                               |
|  ✅   |   🟤   | do2.cards.bought.SNE                 |  totals  | How many times the card sneak has been purchased in total.                                       |
|  ✅   |   🟤   | do2.cards.bought.SPR                 |  totals  | How many times the card speed runner has been purchased in total.                                |
|  ✅   |   🟤   | do2.cards.bought.SPT                 |  totals  | How many times the card sprint has been purchased in total.                                      |
|  ✅   |   🟤   | do2.cards.bought.STA                 |  totals  | How many times the card stability has been purchased in total.                                   |
|  ✅   |   🟤   | do2.cards.bought.STU                 |  totals  | How many times the card stumble has been purchased in total.                                     |
|  ✅   |   🟤   | do2.cards.bought.SUU                 |  totals  | How many times the card suit up has been purchased in total.                                     |
|  ✅   |   🟤   | do2.cards.bought.SWA                 |  totals  | How many times the card swagger has been purchased in total.                                     |
|  ✅   |   🟤   | do2.cards.bought.TAA                 |  totals  | How many times the card tactical approach has been purchased in total.                           |
|  ✅   |   🟤   | do2.cards.bought.TRH                 |  totals  | How many times the card treasure hunter has been purchased in total.                             |
|  ✅   |   🟤   | do2.cards.bought.TRL                 |  totals  | How many times the card tread lightly has been purchased in total.                               |
|  ✅   |   🟤   | do2.cards.played.ADR                 |  totals  | How many times the card adrenaline rush has been played in total.                                |
|  ✅   |   🟤   | do2.cards.played.BES                 |  totals  | How many times the card beast sense has been played in total.                                    |
|  ✅   |   🟤   | do2.cards.played.BRI                 |  totals  | How many times the card brilliance has been played in total.                                     |
|  ✅   |   🟤   | do2.cards.played.BST                 |  totals  | How many times the card bounding strides has been played in total.                               |
|  ✅   |   🟤   | do2.cards.played.CHS                 |  totals  | How many times the card chill step has been played in total.                                     |
|  ✅   |   🟤   | do2.cards.played.COS                 |  totals  | How many times the card cold snap has been played in total.                                      |
|  ✅   |   🟤   | do2.cards.played.DEF                 |  totals  | How many times the card deepfrost has been played in total.                                      |
|  ✅   |   🟤   | do2.cards.played.DUL                 |  totals  | How many times the card dungeon lackey has been played in total.                                 |
|  ✅   |   🟤   | do2.cards.played.DUR                 |  totals  | How many times the card dungeon repairs has been played in total.                                |
|  ✅   |   🟤   | do2.cards.played.EES                 |  totals  | How many times the card eerie silence has been played in total.                                  |
|  ✅   |   🟤   | do2.cards.played.EMS                 |  totals  | How many times the card ember seeker has been played in total.                                   |
|  ✅   |   🟤   | do2.cards.played.EOP                 |  totals  | How many times the card eyes on the prize has been played in total.                              |
|  ✅   |   🟤   | do2.cards.played.EVA                 |  totals  | How many times the card evasion has been played in total.                                        |
|  ✅   |   🟤   | do2.cards.played.FBS                 |  totals  | How many times the card fuzzy bunny slippers has been played in total.                           |
|  ✅   |   🟤   | do2.cards.played.FRF                 |  totals  | How many times the card frost focus has been played in total.                                    |
|  ✅   |   🟤   | do2.cards.played.LAS                 |  totals  | How many times the card loot and scoot has been played in total.                                 |
|  ✅   |   🟤   | do2.cards.played.MOC                 |  totals  | How many times the card moment of clarity has been played in total.                              |
|  ✅   |   🟤   | do2.cards.played.NIL                 |  totals  | How many times the card nimble looting has been played in total.                                 |
|  ✅   |   🟤   | do2.cards.played.P2W                 |  totals  | How many times the card pay to win has been played in total.                                     |
|  ✅   |   🟤   | do2.cards.played.PCP                 |  totals  | How many times the card pork chop power has been played in total.                                |
|  ✅   |   🟤   | do2.cards.played.PIB                 |  totals  | How many times the card pirates booty has been played in total.                                  |
|  ✅   |   🟤   | do2.cards.played.QUI                 |  totals  | How many times the card quick step has been played in total.                                     |
|  ✅   |   🟤   | do2.cards.played.REC                 |  totals  | How many times the card reckless charge has been played in total.                                |
|  ✅   |   🟤   | do2.cards.played.SAG                 |  totals  | How many times the card smash and grab has been played in total.                                 |
|  ✅   |   🟤   | do2.cards.played.SEW                 |  totals  | How many times the card second wind has been played in total.                                    |
|  ✅   |   🟤   | do2.cards.played.SIR                 |  totals  | How many times the card silent runner has been played in total.                                  |
|  ✅   |   🟤   | do2.cards.played.SNE                 |  totals  | How many times the card sneak has been played in total.                                          |
|  ✅   |   🟤   | do2.cards.played.SPR                 |  totals  | How many times the card speed runner has been played in total.                                   |
|  ✅   |   🟤   | do2.cards.played.SPT                 |  totals  | How many times the card sprint has been played in total.                                         |
|  ✅   |   🟤   | do2.cards.played.STA                 |  totals  | How many times the card stability has been played in total.                                      |
|  ✅   |   🟤   | do2.cards.played.STU                 |  totals  | How many times the card stumble has been played in total.                                        |
|  ✅   |   🟤   | do2.cards.played.SUU                 |  totals  | How many times the card suit up has been played in total.                                        |
|  ✅   |   🟤   | do2.cards.played.SWA                 |  totals  | How many times the card swagger has been played in total.                                        |
|  ✅   |   🟤   | do2.cards.played.TAA                 |  totals  | How many times the card tactical approach has been played in total.                              |
|  ✅   |   🟤   | do2.cards.played.TRH                 |  totals  | How many times the card treasure hunter has been played in total.                                |
|  ✅   |   🟤   | do2.cards.played.TRL                 |  totals  | How many times the card tread lightly has been played in total.                                  |
|  ✅   |   🟤   | do2.depth_charge_success             |  totals  | The total amount of Depth Charge Successes.                                                      |
|  ✅   |   🟢   | do2.eggs.bdubs                       |  totals  | Whether the player has found Bdub's egg.                                                         |
|  ✅   |   🟢   | do2.eggs.beef                        |  totals  | Whether the player has found Beef's egg.                                                         |
|  ✅   |   🟢   | do2.eggs.cleo                        |  totals  | Whether the player has found Cleo's egg.                                                         |
|  ✅   |   🟢   | do2.eggs.cub                         |  totals  | Whether the player has found Cub's egg.                                                          |
|  ✅   |   🟢   | do2.eggs.docm                        |  totals  | Whether the player has found Docm's egg.                                                         |
|  ✅   |   🟢   | do2.eggs.false                       |  totals  | Whether the player has found False's egg.                                                        |
|  ✅   |   🟢   | do2.eggs.gold                        |  totals  | Whether the player has found the Golden egg.                                                     |
|  ✅   |   🟢   | do2.eggs.grian                       |  totals  | Whether the player has found Grian's egg.                                                        |
|  ✅   |   🟢   | do2.eggs.hypno                       |  totals  | Whether the player has found Hypno's egg.                                                        |
|  ✅   |   🟢   | do2.eggs.impulse                     |  totals  | Whether the player has found Impulse's egg.                                                      |
|  ✅   |   🟢   | do2.eggs.iskall                      |  totals  | Whether the player has found Iskall's egg.                                                       |
|  ✅   |   🟢   | do2.eggs.jevin                       |  totals  | Whether the player has found Jevin's egg.                                                        |
|  ✅   |   🟢   | do2.eggs.joe                         |  totals  | Whether the player has found Joe's egg.                                                          |
|  ✅   |   🟢   | do2.eggs.pearl                       |  totals  | Whether the player has found Pearl's egg.                                                        |
|  ✅   |   🟢   | do2.eggs.scar                        |  totals  | Whether the player has found Scar's egg.                                                         |
|  ✅   |   🟢   | do2.eggs.stress                      |  totals  | Whether the player has found Stress's egg.                                                       |
|  ✅   |   🟤   | do2.eggs.total                       |  totals  | How many eggs the players have found.                                                            |
|  ✅   |   🟢   | do2.eggs.wels                        |  totals  | Whether the player has found Wels' egg.                                                          |
|  ✅   |   🟢   | do2.eggs.xb                          |  totals  | Whether the player has found XB's egg.                                                           |
|  ✅   |   🟢   | do2.eggs.xisuma                      |  totals  | Whether the player has found Xisuma's egg.                                                       |
|  ✅   |   🟢   | do2.eggs.zedaph                      |  totals  | Whether the player has found Zed's egg.                                                          |
|  ✅   |   🟤   | do2.highest_loss_streak              |  totals  | The highest loss streak the target has.                                                          |
|  ✅   |   🟤   | do2.highest_win_streak               |  totals  | The highest win streak the target has.                                                           |
|  ✅   |   🟤   | do2.lifetime.coinsconverted          |  totals  | The total amount of Coins the target has Converted.                                              |
|  ✅   |   🟤   | do2.lifetime.escaped.crowns          |  totals  | The total amount of Crowns the target has escaped with.                                          |
|  ❌   |   🟤   | do2.lifetime.escaped.embers          |  totals  | The total amount of Frost Embers the target has escaped with.                                    |
|  ✅   |   🟤   | do2.lifetime.escaped.tomes           |  totals  | The total amount of Tomes the target has escaped with.                                           |
|  ✅   |   🟤   | do2.lifetime.pickedup.coins          |  totals  | The total amount of Coins the target has picked up.                                              |
|  ✅   |   🟤   | do2.lifetime.pickedup.crowns         |  totals  | The total amount of Crowns the target has picked up.                                             |
|  ✅   |   🟤   | do2.lifetime.pickedup.embers         |  totals  | The total amount of Frost Embers the target has picked up.                                       |
|  ✅   |   🟤   | do2.lifetime.spent.crowns            |  totals  | The total amount of Crowns the target has spent.                                                 |
|  ✅   |   🟤   | do2.lifetime.spent.embers            |  totals  | The total amount of Frost Embers the target has spent.                                           |
|  ✅   |   🟤   | do2.lifetime.spent.tomes             |  totals  | The total amount of Tomes the target has spent or submitted.                                     |
|  ✅   |   🟤   | do2.loss_streak                      |  totals  | The current loss streak the target has.                                                          |
|  ✅   |   🟤   | do2.losses                           |  totals  | The total amount of losses the target has.                                                       |
|  ✅   |   🟤   | do2.run.systems.embers.attempts      |  totals  | Used to track how much embers attempted to drop in the dungeon in this run.                      |
|  ✅   |   🟤   | do2.run.systems.treasure.attempts    |  totals  | Used to track how much treasure attempted to drop in the dungeon in this run.                    |
|  ✅   |   🟤   | do2.runs                             |  totals  | The total amount of runs the target has.                                                         |
|  ✅   |   🟢   | do2.rustyrepairs                     |  totals  | Used to track how many                                                                           |
|  ✅   |   🟤   | do2.systems.clank.blocked            |  totals  | How much clank was blocked in total.                                                             |
|  ✅   |   🟤   | do2.systems.clank.generated          |  totals  | How much clank was generated in total.                                                           |
|  ✅   |   🟤   | do2.systems.embers.attempts          |  totals  | Used to track the total of how much embers attempted to drop in the dungeon.                     |
|  ✅   |   🟤   | do2.systems.embers.released          |  totals  | How many embers was released to the dungeon in total.                                            |
|  ✅   |   🟤   | do2.systems.hazard.activated         |  totals  | How many hazard was activated in total.                                                          |
|  ✅   |   🟤   | do2.systems.hazard.blocked           |  totals  | How much hazard was blocked in total.                                                            |
|  ✅   |   🟤   | do2.systems.hazard.generated         |  totals  | How much hazard was generated in total.                                                          |
|  ✅   |   🟤   | do2.systems.maxclank.released        |  totals  | How many clank surpassed maxclank in total.                                                      |
|  ✅   |   🟤   | do2.systems.treasure.attempts        |  totals  | Used to track the total of how much treasure attempted to drop in the dungeon.                   |
|  ✅   |   🟤   | do2.systems.treasure.released        |  totals  | How many treasure was released to the dungeon in total.                                          |
|  ✅   |   🟢   | do2.tendriltravels                   |  totals  | Used to denote how many tendrils the player has visited.                                         |
|  ✅   |   🟤   | do2.win_streak                       |  totals  | The current win streak the target has.                                                           |
|  ✅   |   🟤   | do2.wins                             |  totals  | The total amount of wins the target has.                                                         |
|  ✅   |   🔴   | do2.cards.price.1TM                  | utility  | How much the 1 Tome costs to purchase.                                                           |
|  ✅   |   🔴   | do2.cards.price.3TM                  | utility  | How much the 3 Tomes costs to purchase.                                                          |
|  ✅   |   🔴   | do2.cards.price.5TM                  | utility  | How much the 5 Tomes costs to purchase.                                                          |
|  ✅   |   🔴   | do2.cards.price.ADR                  | utility  | How much the card adrenaline rush costs to purchase.                                             |
|  ✅   |   🔴   | do2.cards.price.BES                  | utility  | How much the card beast sense costs to purchase.                                                 |
|  ✅   |   🔴   | do2.cards.price.BRI                  | utility  | How much the card brilliance costs to purchase.                                                  |
|  ✅   |   🔴   | do2.cards.price.BST                  | utility  | How much the card bounding strides costs to purchase.                                            |
|  ✅   |   🔴   | do2.cards.price.CHS                  | utility  | How much the card chill step costs to purchase.                                                  |
|  ✅   |   🔴   | do2.cards.price.COS                  | utility  | How much the card cold snap costs to purchase.                                                   |
|  ✅   |   🔴   | do2.cards.price.DEF                  | utility  | How much the card deepfrost costs to purchase.                                                   |
|  ✅   |   🔴   | do2.cards.price.DUR                  | utility  | How much the card dungeon repairs costs to purchase.                                             |
|  ✅   |   🔴   | do2.cards.price.EES                  | utility  | How much the card eerie silence costs to purchase.                                               |
|  ✅   |   🔴   | do2.cards.price.EOP                  | utility  | How much the card eyes on the prize costs to purchase.                                           |
|  ✅   |   🔴   | do2.cards.price.EVA                  | utility  | How much the card evasion costs to purchase.                                                     |
|  ✅   |   🔴   | do2.cards.price.FBS                  | utility  | How much the card fuzzy bunny slippers costs to purchase.                                        |
|  ✅   |   🔴   | do2.cards.price.FRF                  | utility  | How much the card frost focus costs to purchase.                                                 |
|  ✅   |   🔴   | do2.cards.price.LAS                  | utility  | How much the card loot and scoot costs to purchase.                                              |
|  ✅   |   🔴   | do2.cards.price.NIL                  | utility  | How much the card nimble looting costs to purchase.                                              |
|  ✅   |   🔴   | do2.cards.price.PIB                  | utility  | How much the card Pirates booty costs to purchase.                                               |
|  ✅   |   🔴   | do2.cards.price.QUI                  | utility  | How much the card quick step costs to purchase.                                                  |
|  ✅   |   🔴   | do2.cards.price.REC                  | utility  | How much the card reckless charge costs to purchase.                                             |
|  ✅   |   🔴   | do2.cards.price.SAG                  | utility  | How much the card smash and grab costs to purchase.                                              |
|  ✅   |   🔴   | do2.cards.price.SEW                  | utility  | How much the card second wind costs to purchase.                                                 |
|  ✅   |   🔴   | do2.cards.price.SIR                  | utility  | How much the card silent runner costs to purchase.                                               |
|  ✅   |   🔴   | do2.cards.price.SPR                  | utility  | How much the card speed runner costs to purchase.                                                |
|  ✅   |   🔴   | do2.cards.price.SPT                  | utility  | How much the card sprint costs to purchase.                                                      |
|  ✅   |   🔴   | do2.cards.price.SUU                  | utility  | How much the card suit up costs to purchase.                                                     |
|  ✅   |   🔴   | do2.cards.price.SWA                  | utility  | How much the card swagger costs to purchase.                                                     |
|  ✅   |   🔴   | do2.cards.price.TRL                  | utility  | How much the card tread lightly costs to purchase.                                               |
|  ✅   |   🔴   | do2.run.artifactValue                | utility  | Value of artifact submitted.                                                                     |
|  ✅   |   🟢   | do2.tests.playerInLocation           | utility  | Used to ensure player stays in lobby at while game isn't in progress                             |
|  ✅   |   🟢   | do2.trigger.gui                      | utility  | Detection used to check players running /trigger. Lets you customize the GUI settings.           |
|  ✅   |   🟢   | do2.trigger.logs                     | utility  | Detection used to check players running /trigger. Used to display log options.                   |
|  ✅   |   🟢   | do2.trigger.map                      | utility  | Detection used to check players running /trigger. Gives you the MC filled map of the game stats. |
|  ✅   |   🟢   | do2.trigger.playsound                | utility  | Detection used to check players running /trigger. Lets you customize the SOUND settings.         |
|  ✅   |   🟢   | do2.trigger.version                  | utility  | Detection used to check players running /trigger. Used to display Brilliance Version.            |
|  ✅   |   🔴   | do2.utility.advancementOrdering      | utility  | Score used to denote when ordering advancements.                                                 |
|  ✅   |   🔵   | do2.utility.berriesToGive            | utility  | How many tracked Sweet Berries need to be given back.                                            |
|  ✅   |   🔵   | do2.utility.bombsToGive              | utility  | How many tracked Bombs need to be given back.                                                    |
|  ✅   |   🔵   | do2.utility.bonemealsToGive          | utility  | How many tracked Bone Meals need to be given back.                                               |
|  ✅   |   🔴   | do2.utility.checkTick                | utility  | Score used to check tick count.                                                                  |
|  ✅   |   🔵   | do2.utility.chopsToGive              | utility  | How many tracked Cooked Porkchops need to be given back.                                         |
|  ✅   |   🔴   | do2.utility.coinsPerCrown            | utility  | Used to store how many coins are converted per crown.                                            |
|  ✅   |   🔵   | do2.utility.coinsToGive              | utility  | How many tracked Coins need to be given back.                                                    |
|  ✅   |   🔵   | do2.utility.crownsToGive             | utility  | How many tracked Crowns need to be given back.                                                   |
|  ✅   |   🔴   | do2.utility.currentFishCount         | utility  | Used to count how many tropical fish exist.                                                      |
|  ✅   |   🔴   | do2.utility.currentTick              | utility  | Score used to count ticks.                                                                       |
|  ✅   |   🟢   | do2.utility.deathCount               | utility  | Checking who has died.                                                                           |
|  ✅   |   🔴   | do2.utility.dungeonRepair            | utility  | Score used to denote when attempting todo a Dungeon Repair.                                      |
|  ✅   |   🔵   | do2.utility.embersToGive             | utility  | How many tracked Frost Embers need to be given back.                                             |
|  ✅   |   🔴   | do2.utility.fishVariant              | utility  | Used to count what variant of fish to spawn.                                                     |
|  ✅   |   🟤   | do2.utility.floorEmbers              | utility  | Used to count how many embers were from the floor.                                               |
|  ✅   |   🔵   | do2.utility.glowberriesToGive        | utility  | How many tracked Glow Berries need to be given back.                                             |
|  ✅   |  GUI   | do2.utility.gui                      | utility  | score used for ALL of the GUI's operations.                                                      |
|  ✅   |   🔵   | do2.utility.key_2ToGive              | utility  | How many tracked L2 Keys need to be given back.                                                  |
|  ✅   |   🔵   | do2.utility.key_3ToGive              | utility  | How many tracked L3 Keys need to be given back.                                                  |
|  ✅   |   🔵   | do2.utility.key_4ToGive              | utility  | How many tracked L4 Keys need to be given back.                                                  |
|  ✅   |   🔵   | do2.utility.kitsToGive               | utility  | How many tracked Rusty Repair Kits need to be given back.                                        |
|  ✅   |   🔴   | do2.utility.ec.collectingLogs        | utility  | Whether the Mob Controller is collecting logs to bundle up.                                      |
|  ✅   |   🔴   | do2.utility.ec.mobCountCounterTest   | utility  | Used to add to the total count of how many mobs are wanted in a zone.                            |
|  ✅   |   🔴   | do2.utility.ec.mobCountCounterTotal  | utility  | Used to total up the count of how many mobs are wanted in a zone.                                |
|  ✅   |   🔴   | do2.utility.ec.mobGenerationCount    | utility  | Count of how many mobs the Mob Controller needs to generate in it's zone.                        |
|  ✅   |   🔴   | do2.utility.ec.mobGenerationType     | utility  | What kind of mob is being worked on in the Mob Controller's zone.                                |
|  ✅   |   🔴   | do2.utility.ec.mobNamesCount         | utility  | How many mob names are in the zone the Mob Controller is working on.                             |
|  ✅   |   🟢   | do2.utility.oldGamemode              | utility  | Used to store player's gamemode before game forced their gamemode                                |
|  ✅   |   🟢   | do2.utility.old_position.temp        | utility  | Used to modify player's old location before teleporting them.                                    |
|  ✅   |   🟢   | do2.utility.old_position.x           | utility  | Used to store player's old X location before teleporting them.                                   |
|  ✅   |   🟢   | do2.utility.old_position.y           | utility  | Used to store player's old Y location before teleporting them.                                   |
|  ✅   |   🟢   | do2.utility.old_position.z           | utility  | Used to store player's old Z location before teleporting them.                                   |
|  ✅   |   🔴   | do2.utility.onServer                 | utility  | Whether Brilliance can detect Agronet.                                                           |
|  ✅   |   🔴   | do2.utility.onInstance               | utility  | Whether Brilliance can detect 'is-dungeon-instance'.                                             |
|  ✅   |   🔴   | do2.utility.playerCount              | utility  | Used to count how many players are on the server at a time.                                      |
|  ✅   |   🔴   | do2.utility.playersExperience        | utility  | Used to check player's exp in order to give them 1 level if they dont have one.                  |
|  ✅   |   🟢   | do2.utility.playersFood              | utility  | Player's food level                                                                              |
|  ✅   |   🟢   | do2.utility.playersSaturation        | utility  | Player's saturation level                                                                        |
|  ✅   |   🔴   | do2.utility.priceChecker             | utility  | Used to count how much a card costs dynamically.                                                 |
|  ✅   |   🔵   | do2.utility.pumpkinsToGive           | utility  | How many tracked Pumpkins need to be given back.                                                 |
|  ✅   |   🔴   | do2.utility.randomNum                | utility  | Score used to generated random numbers                                                           |
|  ✅   |   🔴   | do2.utility.randomNumberRange        | utility  | Used to determine the high value of a random number.                                             |
|  ✅   |   🔵   | do2.utility.reachedBottomDepthCharge | utility  | Score used to denote what level of the TnT depth charge player has reached.                      |
|  ✅   |   🔴   | do2.utility.receivedJackpot          | utility  | Used to check whether a jackpot was won from the crown shops.                                    |
|  ✅   |   🟢   | do2.utility.shouldForceFood          | utility  | Used to check whether player can have their food forced.                                         |
|  ✅   |   🔴   | do2.utility.shulkerPlayers           | utility  | Used to count how many players with the tag do2.received_shulker                                 |
|  ✅   |   🔴   | do2.utility.statsScreen              | utility  | What screen the statistics room is displaying.                                                   |
|  ✅   |   🟢   | do2.utility.totalCrowns              | utility  | Used to count crowns converted from coins.                                                       |
|  ✅   |   🟢   | do2.utility.trackLeaves              | utility  | Used to detect when a player rejoins.                                                            |
|  ❌   |   🟢   | do2.utility.voiceChat                | utility  | Used to check if Voice Chat mod is installed on the player.                                      |
