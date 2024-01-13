# Brilliance Scoreboard
Brilliance uses a ton of scoreboard objectives for a vast amount of things. This list should document and describe every single scoreboard objective.
<br><br>
Agronet transfers EVERYTHING that isn't marked as `Utility`.


#### Table's Key:
1. `Auto`
   1. ✅ | We fully automate this objective in the datapack.
   2. ❌ | We currently do not have a means of collecting the data yet.
   3. ⛔ | The data is collected by Command Blocks on physical redstone lines.
2. `@s`
   1. ✅ | The score is stored on `@a[tag=do2.running]`. 
   2. ❌ | The score is stored `$dungeon`.
   3. ⛔ | The score is stored on `@p[tag=shulker_recieved]`.
3. `Name`
   - Name of the scoreboard objective.
4. `Category`
   1. `Totals`  | This Number can ONLY go up from across runs.
   2. `Current` | Changes depending on the run.
   3. `Utility` | This never gets transferred by Agronet
   4. `Config`  | This is config settings to determine how the run is played. 
5. `Description`
   - A brief description of the scoreboard objective's purpose

| Auto | @s  | Name                                 | Category | Description                                                                                                |
|:----:|:---:|:-------------------------------------|:--------:|:-----------------------------------------------------------------------------------------------------------|
|  ❌   |  ❌  | do2.config.useZones                  |  Config  | Boolean on whether the run is using Ravager Zones.                                                         |
|  ❌   |  ❌  | do2.config.eggRewards                |  Config  | Boolean on whether the run rewards the player for finding easter eggs.                                     |
|  ❌   |  ❌  | do2.config.tickRate                  |  Config  | Determine how fast you want the datapack to run. Slower is more optimized.                                 |
|  ✅   |  ❌  | do2.utility.configDisplay            | Utility  | Used to show the current settings of the dungeon.                                                          |
|  ✅   |  ❌  | do2.utility.currentTick              | Utility  | Current tick, used to determine when the ticks reach the do2.config.tickRate                               |
|  ✅   |  ✅  | do2.runs                             |  Totals  | Total amount of runs this player has.                                                                      |
|  ❌   |  ✅  | do2.shards                           |  Totals  | Total amount of Frozen Shards this player has had.                                                         |
|  ❌   |  ✅  | do2.crowns                           |  Totals  | Total amount of Crowns this player has had outside the dungeon.                                            |
|  ❌   |  ✅  | do2.embers                           |  Totals  | Total amount of Frost Embers this player has had outside the dungeon.                                      |
|  ✅   |  ✅  | do2.wins                             |  Totals  | Total amount of wins this player has.                                                                      |
|  ✅   |  ✅  | do2.highest_win_streak               |  Totals  | The Highest Win Streak this player has had.                                                                |
|  ✅   |  ✅  | do2.win_streak                       | Current  | The player's current Win Streak.                                                                           |
|  ✅   |  ✅  | do2.losses                           |  Totals  | Total amount of wins this player has.                                                                      |
|  ✅   |  ✅  | do2.highest_loss_streak              |  Totals  | The Highest Loss Streak this player has had.                                                               |
|  ✅   |  ✅  | do2.loss_streak                      | Current  | The player's current Loss Streak.                                                                          |
|  ✅   |  ✅  | do2.depth_charge_success             |  Totals  | Total amount of the player's Successes when diving the TnT depth charge                                    |
|  ✅   |  ❌  | do2.run.active                       | Utility  | Boolean on whether the Dungeon is running.                                                                 |
|  ✅   |  ❌  | do2.run.empty                        | Utility  | Time on how long the Dungeon hasn't had players inside the dungeon.                                        |
|  ✅   |  ❌  | do2.run.ticks                        | Utility  | Time on how long the server has been running for                                                           |
|  ✅   |  ❌  | do2.run.seconds                      | Utility  | Time on how long the run lasted. From pressure plate press to Artifact Submission.                         |
|  ✅   |  ✅  | do2.run.seconds                      | Current  | Time on how long the player's run lasted. From pressure plate press to either Death or Artifact Submission |
|  ✅   |  ✅  | do2.run.difficulty                   | Current  | The dungeon's run difficulty                                                                               | 
|  ✅   |  ✅  | do2.run.deepest_floor                | Current  | The deepest floor the player has reached.                                                                  |
|  ✅   |  ✅  | do2.run.tnt_dive                     | Current  | Whether the player has succeeded the TnT depth charge this run.                                            |
|  ✅   |  ✅  | do2.run.has_won                      | Current  | Whether the player has won the run.                                                                        |
|  ✅   |  ✅  | do2.run.has_died                     | Utility  | Whether the player has died.                                                                               |
|  ✅   |  ❌  | do2.run.player_deaths                | Utility  | How many of the player have died.                                                                          |
|  ✅   |  ❌  | do2.run.players                      | Current  | How many players are running this run.                                                                     |
|  ✅   |  ❌  | do2.utility.card_bought              | Utility  | Determine what the card the player bought is for Agronet.                                                  |
|  ✅   |  ✅  | do2.utility.advancementOrdering      | Utility  | Boolean on whether the advancements are being revoked and then granted in order.                           |
|  ✅   |  ✅  | do2.utility.reachedBottomDepthCharge | Utility  | Whether player has reached the Bottom of the TnT Depth Charge.                                             |
|  ✅   |  ✅  | do2.utility.embersToGive             | Utility  | Track how many Frost Embers player picked up so we can give the same amount back but tracked.              |
|  ✅   |  ✅  | do2.utility.coinsToGive              | Utility  | Track how many Coins player picked up so we can give the same amount back but tracked.                     |
|  ✅   |  ✅  | do2.utility.crownsToGive             | Utility  | Track how many Crowns player picked up so we can give the same amount back but tracked.                    |
|  ✅   |  ✅  | do2.utility.kitsToGive               | Utility  | Track how many Rusty Kits player picked up so we can give the same amount back but tracked.                |
|  ✅   |  ✅  | do2.utility.pumpkinsToGive           | Utility  | Track how many Pumpkins player picked up so we can give the same amount back but tracked.                  |
|  ✅   |  ✅  | do2.utility.berriesToGive            | Utility  | Track how many Sweet Berries player picked up so we can give the same amount back but tracked.             |
|  ✅   |  ✅  | do2.utility.chopsToGive              | Utility  | Track how many Pork Chops player picked up so we can give the same amount back but tracked.                |
|  ✅   |  ✅  | do2.utility.key_2ToGive              | Utility  | Track how many Level 2 Keys player picked up so we can give the same amount back but tracked.              |
|  ✅   |  ✅  | do2.utility.key_3ToGive              | Utility  | Track how many Level 3 Keys player picked up so we can give the same amount back but tracked.              |
|  ✅   |  ✅  | do2.utility.key_4ToGive              | Utility  | Track how many Level 4 Keys player picked up so we can give the same amount back but tracked.              |
|  ⛔   |  ❌  | do2.run.systems.clank.generated      | Current  | Current amount of clank generated this run.                                                                |
|  ⛔   |  ⛔  | do2.run.systems.clank.blocked        | Current  | Current amount of clank blocked this run.                                                                  |
|  ⛔   |  ❌  | do2.run.systems.hazard.generated     | Current  | Current amount of hazard generated this run.                                                               |
|  ⛔   |  ⛔  | do2.run.systems.hazard.blocked       | Current  | Current amount of hazard blocked this run.                                                                 |
|  ⛔   |  ❌  | do2.run.systems.embers.released      | Current  | Current amount of Frost Embers sent to the droppers across the dungeon.                                    |
|  ⛔   |  ❌  | do2.run.systems.maxclank.released    | Current  | Current amount of Clank reached over the Max Clank limit.                                                  |
|  ⛔   |  ❌  | do2.run.systems.treasure.released    | Current  | Current amount of Treasure sent to the droppers across the dungeon.                                        |
|  ⛔   |  ❌  | do2.run.systems.hazard.activated     | Current  | Current amount of Hazard sent to the various traps across the dungeon.                                     |
|  ✅   |  ✅  | do2.eggs.beef                        |  Totals  | Boolean on whether player has found the Beefegg.                                                           |
|  ✅   |  ✅  | do2.eggs.bdubs                       |  Totals  | Boolean on whether player has found the Bdubsegg.                                                          |
|  ✅   |  ✅  | do2.eggs.cleo                        |  Totals  | Boolean on whether player has found the Cleoegg.                                                           |
|  ✅   |  ✅  | do2.eggs.cub                         |  Totals  | Boolean on whether player has found the Cubfanegg.                                                         |
|  ✅   |  ✅  | do2.eggs.docm                        |  Totals  | Boolean on whether player has found the Docegg.                                                            |
|  ✅   |  ✅  | do2.eggs.false                       |  Totals  | Boolean on whether player has found the Falsegg.                                                           |
|  ✅   |  ✅  | do2.eggs.gold                        |  Totals  | Boolean on whether player has found the Goldegg.                                                           |
|  ✅   |  ✅  | do2.eggs.grian                       |  Totals  | Boolean on whether player has found the Gregg.                                                             |
|  ✅   |  ✅  | do2.eggs.hypno                       |  Totals  | Boolean on whether player has found the Hypnoegg.                                                          |
|  ✅   |  ✅  | do2.eggs.impulse                     |  Totals  | Boolean on whether player has found the Impulsegg.                                                         |
|  ✅   |  ✅  | do2.eggs.iskall                      |  Totals  | Boolean on whether player has found the Iskallegg.                                                         |
|  ✅   |  ✅  | do2.eggs.jevin                       |  Totals  | Boolean on whether player has found the iJevinegg.                                                         |
|  ✅   |  ✅  | do2.eggs.joe                         |  Totals  | Boolean on whether player has found the Joeegg.                                                            |
|  ✅   |  ✅  | do2.eggs.pearl                       |  Totals  | Boolean on whether player has found the Pearlegg.                                                          |
|  ✅   |  ✅  | do2.eggs.scar                        |  Totals  | Boolean on whether player has found the Scaregg.                                                           |
|  ✅   |  ✅  | do2.eggs.stress                      |  Totals  | Boolean on whether player has found the Stressegg.                                                         |
|  ✅   |  ✅  | do2.eggs.wels                        |  Totals  | Boolean on whether player has found the Welsegg.                                                           |
|  ✅   |  ✅  | do2.eggs.xb                          |  Totals  | Boolean on whether player has found the xBegg.                                                             |
|  ✅   |  ✅  | do2.eggs.xisuma                      |  Totals  | Boolean on whether player has found the Eggsuma.                                                           |
|  ✅   |  ✅  | do2.eggs.zedaph                      |  Totals  | Boolean on whether player has found the Zedaphegg.                                                         |
|  ⛔   |  ❌  | do2.run.cards.availible.EVA          | Current  | Boolean on whether the card "Evasion" is availible for purchase.                                           |
|  ⛔   |  ❌  | do2.run.cards.availible.TRL          | Current  | Boolean on whether the card "Tread Lightly" is availible for purchase.                                     |
|  ⛔   |  ❌  | do2.run.cards.availible.LAS          | Current  | Boolean on whether the card "Loot and Scoot" is availible for purchase.                                    |
|  ⛔   |  ❌  | do2.run.cards.availible.FRF          | Current  | Boolean on whether the card "Frost Focus" is availible for purchase.                                       |
|  ⛔   |  ❌  | do2.run.cards.availible.SEW          | Current  | Boolean on whether the card "Second Wind" is availible for purchase.                                       |
|  ⛔   |  ❌  | do2.run.cards.availible.BES          | Current  | Boolean on whether the card "Beast Sense" is availible for purchase.                                       |
|  ⛔   |  ❌  | do2.run.cards.availible.BST          | Current  | Boolean on whether the card "Bounding Strides" is availible for purchase.                                  |
|  ⛔   |  ❌  | do2.run.cards.availible.REC          | Current  | Boolean on whether the card "Reckless Charge" is availible for purchase.                                   |
|  ⛔   |  ❌  | do2.run.cards.availible.SPT          | Current  | Boolean on whether the card "Sprint" is availible for purchase.                                            |
|  ⛔   |  ❌  | do2.run.cards.availible.NIL          | Current  | Boolean on whether the card "Nimble Looting" is availible for purchase.                                    |
|  ⛔   |  ❌  | do2.run.cards.availible.SAG          | Current  | Boolean on whether the card "Smash and Grab" is availible for purchase.                                    |
|  ⛔   |  ❌  | do2.run.cards.availible.QUI          | Current  | Boolean on whether the card "Quickstep" is availible for purchase.                                         |
|  ⛔   |  ❌  | do2.run.cards.availible.SUU          | Current  | Boolean on whether the card "Suit Up" is availible for purchase.                                           |
|  ⛔   |  ❌  | do2.run.cards.availible.ADR          | Current  | Boolean on whether the card "Adrenaline Rush" is availible for purchase.                                   |
|  ⛔   |  ❌  | do2.run.cards.availible.EES          | Current  | Boolean on whether the card "Eerie Silence" is availible for purchase.                                     |
|  ⛔   |  ❌  | do2.run.cards.availible.DUR          | Current  | Boolean on whether the card "Dungeon Repairs" is availible for purchase.                                   |
|  ⛔   |  ❌  | do2.run.cards.availible.SWA          | Current  | Boolean on whether the card "Swagger" is availible for purchase.                                           |
|  ⛔   |  ❌  | do2.run.cards.availible.CHS          | Current  | Boolean on whether the card "Chill Step" is availible for purchase.                                        |
|  ⛔   |  ❌  | do2.run.cards.availible.SPR          | Current  | Boolean on whether the card "Speed Runner" is availible for purchase.                                      |
|  ⛔   |  ❌  | do2.run.cards.availible.EOP          | Current  | Boolean on whether the card "Eyes on the Prize" is availible for purchase.                                 |
|  ⛔   |  ❌  | do2.run.cards.availible.PIB          | Current  | Boolean on whether the card "Pirate's Booty" is availible for purchase.                                    |
|  ⛔   |  ❌  | do2.run.cards.availible.HAS          | Current  | Boolean on whether the card "Haste" is availible for purchase.                                             |
|  ⛔   |  ❌  | do2.run.cards.availible.COS          | Current  | Boolean on whether the card "Cold Snap" is availible for purchase.                                         |
|  ⛔   |  ❌  | do2.run.cards.availible.SIR          | Current  | Boolean on whether the card "Silent Runner" is availible for purchase.                                     |
|  ⛔   |  ❌  | do2.run.cards.availible.FBS          | Current  | Boolean on whether the card "Fuzzy Bunny Slippers" is availible for purchase.                              |
|  ⛔   |  ❌  | do2.run.cards.availible.DEF          | Current  | Boolean on whether the card "Deepfrost" is availible for purchase.                                         |
|  ⛔   |  ❌  | do2.run.cards.availible.BRI          | Current  | Boolean on whether the card "Brilliance" is availible for purchase.                                        |
|  ⛔   |  ❌  | do2.run.cards.bought.1TM             | Current  | Boolean on whether the option to buy  "1 Tome" was purchased this run.                                     |
|  ⛔   |  ❌  | do2.run.cards.bought.3TM             | Current  | Boolean on whether the option to buy  "3 Tome" was purchased this run.                                     |
|  ⛔   |  ❌  | do2.run.cards.bought.5TM             | Current  | Boolean on whether the option to buy  "5 Tome" was purchased this run.                                     |
|  ⛔   |  ❌  | do2.run.cards.bought.MOC             | Current  | Boolean on whether the card "Moment of Clarity" was purchased this run.                                    |
|  ⛔   |  ❌  | do2.run.cards.bought.SNE             | Current  | Boolean on whether the card "Sneak" was purchased this run.                                                |
|  ⛔   |  ❌  | do2.run.cards.bought.STA             | Current  | Boolean on whether the card "Stability" was purchased this run.                                            |
|  ⛔   |  ❌  | do2.run.cards.bought.TRH             | Current  | Boolean on whether the card Treasure Hunter" was purchased this run.                                       |
|  ⛔   |  ❌  | do2.run.cards.bought.EMS             | Current  | Boolean on whether the card "Ember Seeker" was purchased this run.                                         |
|  ⛔   |  ❌  | do2.run.cards.bought.EVA             | Current  | Boolean on whether the card "Evasion" was purchased this run.                                              |
|  ⛔   |  ❌  | do2.run.cards.bought.TRL             | Current  | Boolean on whether the card "Tread Lightly" was purchased this run.                                        |
|  ⛔   |  ❌  | do2.run.cards.bought.LAS             | Current  | Boolean on whether the card "Loot and Scoot" was purchased this run.                                       |
|  ⛔   |  ❌  | do2.run.cards.bought.FRF             | Current  | Boolean on whether the card "Frost Focus" was purchased this run.                                          |
|  ⛔   |  ❌  | do2.run.cards.bought.SEW             | Current  | Boolean on whether the card "Second Wind" was purchased this run.                                          |
|  ⛔   |  ❌  | do2.run.cards.bought.BES             | Current  | Boolean on whether the card "Beast Sense" was purchased this run.                                          |
|  ⛔   |  ❌  | do2.run.cards.bought.BST             | Current  | Boolean on whether the card "Bounding Strides" was purchased this run.                                     |
|  ⛔   |  ❌  | do2.run.cards.bought.REC             | Current  | Boolean on whether the card "Reckless Charge" was purchased this run.                                      |
|  ⛔   |  ❌  | do2.run.cards.bought.SPT             | Current  | Boolean on whether the card "Sprint" was purchased this run.                                               |
|  ⛔   |  ❌  | do2.run.cards.bought.NIL             | Current  | Boolean on whether the card "Nimble Looting" was purchased this run.                                       |
|  ⛔   |  ❌  | do2.run.cards.bought.SAG             | Current  | Boolean on whether the card "Smash and Grab" was purchased this run.                                       |
|  ⛔   |  ❌  | do2.run.cards.bought.QUI             | Current  | Boolean on whether the card "Quickstep" was purchased this run.                                            |
|  ⛔   |  ❌  | do2.run.cards.bought.SUU             | Current  | Boolean on whether the card "Suit Up" was purchased this run.                                              |
|  ⛔   |  ❌  | do2.run.cards.bought.ADR             | Current  | Boolean on whether the card "Adrenaline Rush" was purchased this run.                                      |
|  ⛔   |  ❌  | do2.run.cards.bought.EES             | Current  | Boolean on whether the card "Eerie Silence" was purchased this run.                                        |
|  ⛔   |  ❌  | do2.run.cards.bought.DUR             | Current  | Boolean on whether the card "Dungeon Repairs" was purchased this run.                                      |
|  ⛔   |  ❌  | do2.run.cards.bought.SWA             | Current  | Boolean on whether the card "Swagger" was purchased this run.                                              |
|  ⛔   |  ❌  | do2.run.cards.bought.CHS             | Current  | Boolean on whether the card "Chill Step" was purchased this run.                                           |
|  ⛔   |  ❌  | do2.run.cards.bought.SPR             | Current  | Boolean on whether the card "Speed Runner" was purchased this run.                                         |
|  ⛔   |  ❌  | do2.run.cards.bought.EOP             | Current  | Boolean on whether the card "Eyes on the Prize" was purchased this run.                                    |
|  ⛔   |  ❌  | do2.run.cards.bought.PIB             | Current  | Boolean on whether the card "Pirate's Booty" was purchased this run.                                       |
|  ⛔   |  ❌  | do2.run.cards.bought.HAS             | Current  | Boolean on whether the card "Haste" was purchased this run.                                                |
|  ⛔   |  ❌  | do2.run.cards.bought.COS             | Current  | Boolean on whether the card "Cold Snap" was purchased this run.                                            |
|  ⛔   |  ❌  | do2.run.cards.bought.SIR             | Current  | Boolean on whether the card "Silent Runner" was purchased this run.                                        |
|  ⛔   |  ❌  | do2.run.cards.bought.FBS             | Current  | Boolean on whether the card "Fuzzy Bunny Slippers" was purchased this run.                                 |
|  ⛔   |  ❌  | do2.run.cards.bought.DEF             | Current  | Boolean on whether the card "Deepfrost" was purchased this run.                                            |
|  ⛔   |  ❌  | do2.run.cards.bought.BRI             | Current  | Boolean on whether the card "Brilliance" was purchased this run.                                           |
|  ✅   |  ❌  | do2.cards.bought.1TM                 |  Totals  | Boolean on whether the option to buy  "1 Tome" was purchased.                                              |
|  ✅   |  ❌  | do2.cards.bought.3TM                 |  Totals  | Boolean on whether the option to buy  "3 Tome" was purchased.                                              |
|  ✅   |  ❌  | do2.cards.bought.5TM                 |  Totals  | Boolean on whether the option to buy  "5 Tome" was purchased.                                              |
|  ✅   |  ❌  | do2.cards.bought.MOC                 |  Totals  | Total amount of times the card "Moment of Clarity" was purchased.                                          |
|  ✅   |  ❌  | do2.cards.bought.SNE                 |  Totals  | Total amount of times the card "Sneak" was purchased.                                                      |
|  ✅   |  ❌  | do2.cards.bought.STA                 |  Totals  | Total amount of times the card "Stability" was purchased.                                                  |
|  ✅   |  ❌  | do2.cards.bought.TRH                 |  Totals  | Total amount of times the card Treasure Hunter" was purchased.                                             |
|  ✅   |  ❌  | do2.cards.bought.EMS                 |  Totals  | Total amount of times the card "Ember Seeker" was purchased.                                               |
|  ✅   |  ❌  | do2.cards.bought.EVA                 |  Totals  | Total amount of times the card "Evasion" was purchased.                                                    |
|  ✅   |  ❌  | do2.cards.bought.TRL                 |  Totals  | Total amount of times the card "Tread Lightly" was purchased.                                              |
|  ✅   |  ❌  | do2.cards.bought.LAS                 |  Totals  | Total amount of times the card "Loot and Scoot" was purchased.                                             |
|  ✅   |  ❌  | do2.cards.bought.FRF                 |  Totals  | Total amount of times the card "Frost Focus" was purchased.                                                |
|  ✅   |  ❌  | do2.cards.bought.SEW                 |  Totals  | Total amount of times the card "Second Wind" was purchased.                                                |
|  ✅   |  ❌  | do2.cards.bought.BES                 |  Totals  | Total amount of times the card "Beast Sense" was purchased.                                                |
|  ✅   |  ❌  | do2.cards.bought.BST                 |  Totals  | Total amount of times the card "Bounding Strides" was purchased.                                           |
|  ✅   |  ❌  | do2.cards.bought.REC                 |  Totals  | Total amount of times the card "Reckless Charge" was purchased.                                            |
|  ✅   |  ❌  | do2.cards.bought.SPT                 |  Totals  | Total amount of times the card "Sprint" was purchased.                                                     |
|  ✅   |  ❌  | do2.cards.bought.NIL                 |  Totals  | Total amount of times the card "Nimble Looting" was purchased.                                             |
|  ✅   |  ❌  | do2.cards.bought.SAG                 |  Totals  | Total amount of times the card "Smash and Grab" was purchased.                                             |
|  ✅   |  ❌  | do2.cards.bought.QUI                 |  Totals  | Total amount of times the card "Quickstep" was purchased.                                                  |
|  ✅   |  ❌  | do2.cards.bought.SUU                 |  Totals  | Total amount of times the card "Suit Up" was purchased.                                                    |
|  ✅   |  ❌  | do2.cards.bought.ADR                 |  Totals  | Total amount of times the card "Adrenaline Rush" was purchased.                                            |
|  ✅   |  ❌  | do2.cards.bought.EES                 |  Totals  | Total amount of times the card "Eerie Silence" was purchased.                                              |
|  ✅   |  ❌  | do2.cards.bought.DUR                 |  Totals  | Total amount of times the card "Dungeon Repairs" was purchased.                                            |
|  ✅   |  ❌  | do2.cards.bought.SWA                 |  Totals  | Total amount of times the card "Swagger" was purchased.                                                    |
|  ✅   |  ❌  | do2.cards.bought.CHS                 |  Totals  | Total amount of times the card "Chill Step" was purchased.                                                 |
|  ✅   |  ❌  | do2.cards.bought.SPR                 |  Totals  | Total amount of times the card "Speed Runner" was purchased.                                               |
|  ✅   |  ❌  | do2.cards.bought.EOP                 |  Totals  | Total amount of times the card "Eyes on the Prize" was purchased.                                          |
|  ✅   |  ❌  | do2.cards.bought.PIB                 |  Totals  | Total amount of times the card "Pirate's Booty" was purchased.                                             |
|  ✅   |  ❌  | do2.cards.bought.HAS                 |  Totals  | Total amount of times the card "Haste" was purchased.                                                      |
|  ✅   |  ❌  | do2.cards.bought.COS                 |  Totals  | Total amount of times the card "Cold Snap" was purchased.                                                  |
|  ✅   |  ❌  | do2.cards.bought.SIR                 |  Totals  | Total amount of times the card "Silent Runner" was purchased.                                              |
|  ✅   |  ❌  | do2.cards.bought.FBS                 |  Totals  | Total amount of times the card "Fuzzy Bunny Slippers" was purchased.                                       |
|  ✅   |  ❌  | do2.cards.bought.DEF                 |  Totals  | Total amount of times the card "Deepfrost" was purchased.                                                  |
|  ✅   |  ❌  | do2.cards.bought.BRI                 |  Totals  | Total amount of times the card "Brilliance" was purchased.                                                 |
|  ✅   |  ⛔  | do2.run.cards.played.P2W             | Current  | Total amount of times the card "Pay to Win" was played this run.                                           |
|  ✅   |  ⛔  | do2.run.cards.played.TAA             | Current  | Total amount of times the card "Tactical Approach" was played this run.                                    |
|  ✅   |  ⛔  | do2.run.cards.played.POP             | Current  | Total amount of times the card "Porkchop Power" was played this run.                                       |
|  ✅   |  ⛔  | do2.run.cards.played.DUL             | Current  | Total amount of times the card "Dungeon Lackey" was played this run.                                       |
|  ✅   |  ⛔  | do2.run.cards.played.STU             | Current  | Total amount of times the card "Stumble" was played this run.                                              |
|  ✅   |  ⛔  | do2.run.cards.played.MOC             | Current  | Total amount of times the card "Moment of Clarity" was played this run.                                    |
|  ✅   |  ⛔  | do2.run.cards.played.SNE             | Current  | Total amount of times the card "Sneak" was played this run.                                                |
|  ✅   |  ⛔  | do2.run.cards.played.STA             | Current  | Total amount of times the card "Stability" was played this run.                                            |
|  ✅   |  ⛔  | do2.run.cards.played.TRH             | Current  | Total amount of times the card Treasure Hunter" was played this run.                                       |
|  ✅   |  ⛔  | do2.run.cards.played.EMS             | Current  | Total amount of times the card "Ember Seeker" was played this run.                                         |
|  ✅   |  ⛔  | do2.run.cards.played.EVA             | Current  | Total amount of times the card "Evasion" was played this run.                                              |
|  ✅   |  ⛔  | do2.run.cards.played.TRL             | Current  | Total amount of times the card "Tread Lightly" was played this run.                                        |
|  ✅   |  ⛔  | do2.run.cards.played.LAS             | Current  | Total amount of times the card "Loot and Scoot" was played this run.                                       |
|  ✅   |  ⛔  | do2.run.cards.played.FRF             | Current  | Total amount of times the card "Frost Focus" was played this run.                                          |
|  ✅   |  ⛔  | do2.run.cards.played.SEW             | Current  | Total amount of times the card "Second Wind" was played this run.                                          |
|  ✅   |  ⛔  | do2.run.cards.played.BES             | Current  | Total amount of times the card "Beast Sense" was played this run.                                          |
|  ✅   |  ⛔  | do2.run.cards.played.BST             | Current  | Total amount of times the card "Bounding Strides" was played this run.                                     |
|  ✅   |  ⛔  | do2.run.cards.played.REC             | Current  | Total amount of times the card "Reckless Charge" was played this run.                                      |
|  ✅   |  ⛔  | do2.run.cards.played.SPT             | Current  | Total amount of times the card "Sprint" was played this run.                                               |
|  ✅   |  ⛔  | do2.run.cards.played.NIL             | Current  | Total amount of times the card "Nimble Looting" was played this run.                                       |
|  ✅   |  ⛔  | do2.run.cards.played.SAG             | Current  | Total amount of times the card "Smash and Grab" was played this run.                                       |
|  ✅   |  ⛔  | do2.run.cards.played.QUI             | Current  | Total amount of times the card "Quickstep" was played this run.                                            |
|  ✅   |  ⛔  | do2.run.cards.played.SUU             | Current  | Total amount of times the card "Suit Up" was played this run.                                              |
|  ✅   |  ⛔  | do2.run.cards.played.ADR             | Current  | Total amount of times the card "Adrenaline Rush" was played this run.                                      |
|  ✅   |  ⛔  | do2.run.cards.played.EES             | Current  | Total amount of times the card "Eerie Silence" was played this run.                                        |
|  ✅   |  ⛔  | do2.run.cards.played.DUR             | Current  | Total amount of times the card "Dungeon Repairs" was played this run.                                      |
|  ✅   |  ⛔  | do2.run.cards.played.SWA             | Current  | Total amount of times the card "Swagger" was played this run.                                              |
|  ✅   |  ⛔  | do2.run.cards.played.CHS             | Current  | Total amount of times the card "Chill Step" was played this run.                                           |
|  ✅   |  ⛔  | do2.run.cards.played.SPR             | Current  | Total amount of times the card "Speed Runner" was played this run.                                         |
|  ✅   |  ⛔  | do2.run.cards.played.EOP             | Current  | Total amount of times the card "Eyes on the Prize" was played this run.                                    |
|  ✅   |  ⛔  | do2.run.cards.played.PIB             | Current  | Total amount of times the card "Pirate's Booty" was played this run.                                       |
|  ✅   |  ⛔  | do2.run.cards.played.HAS             | Current  | Total amount of times the card "Haste" was played this run.                                                |
|  ✅   |  ⛔  | do2.run.cards.played.COS             | Current  | Total amount of times the card "Cold Snap" was played this run.                                            |
|  ✅   |  ⛔  | do2.run.cards.played.SIR             | Current  | Total amount of times the card "Silent Runner" was played this run.                                        |
|  ✅   |  ⛔  | do2.run.cards.played.FBS             | Current  | Total amount of times the card "Fuzzy Bunny Slippers" was played this run.                                 |
|  ✅   |  ⛔  | do2.run.cards.played.DEF             | Current  | Total amount of times the card "Deepfrost" was played this run.                                            |
|  ✅   |  ⛔  | do2.run.cards.played.BRI             | Current  | Total amount of times the card "Brilliance" was played this run.                                           |
|  ❌   |  ⛔  | do2.run.cards.deck.P2W               | Current  | Amount of the cards "Pay to Win" Inside player's deck.                                                     |
|  ❌   |  ⛔  | do2.run.cards.deck.TAA               | Current  | Amount of the cards "Tactical Approach" Inside player's deck.                                              |
|  ❌   |  ⛔  | do2.run.cards.deck.POP               | Current  | Amount of the cards "Porkchop Power" Inside player's deck.                                                 |
|  ❌   |  ⛔  | do2.run.cards.deck.DUL               | Current  | Amount of the cards "Dungeon Lackey" Inside player's deck.                                                 |
|  ❌   |  ⛔  | do2.run.cards.deck.MOC               | Current  | Amount of the cards "Moment of Clarity" Inside player's deck.                                              |
|  ❌   |  ⛔  | do2.run.cards.deck.SNE               | Current  | Amount of the cards "Sneak" Inside player's deck.                                                          |
|  ❌   |  ⛔  | do2.run.cards.deck.STA               | Current  | Amount of the cards "Stability" Inside player's deck.                                                      |
|  ❌   |  ⛔  | do2.run.cards.deck.TRH               | Current  | Amount of the cards Treasure Hunter" Inside player's deck.                                                 |
|  ❌   |  ⛔  | do2.run.cards.deck.EMS               | Current  | Amount of the cards "Ember Seeker" Inside player's deck.                                                   |
|  ❌   |  ⛔  | do2.run.cards.deck.EVA               | Current  | Amount of the cards "Evasion" Inside player's deck.                                                        |
|  ❌   |  ⛔  | do2.run.cards.deck.TRL               | Current  | Amount of the cards "Tread Lightly" Inside player's deck.                                                  |
|  ❌   |  ⛔  | do2.run.cards.deck.LAS               | Current  | Amount of the cards "Loot and Scoot" Inside player's deck.                                                 |
|  ❌   |  ⛔  | do2.run.cards.deck.FRF               | Current  | Amount of the cards "Frost Focus" Inside player's deck.                                                    |
|  ❌   |  ⛔  | do2.run.cards.deck.SEW               | Current  | Amount of the cards "Second Wind" Inside player's deck.                                                    |
|  ❌   |  ⛔  | do2.run.cards.deck.BES               | Current  | Amount of the cards "Beast Sense" Inside player's deck.                                                    |
|  ❌   |  ⛔  | do2.run.cards.deck.BST               | Current  | Amount of the cards "Bounding Strides" Inside player's deck.                                               |
|  ❌   |  ⛔  | do2.run.cards.deck.REC               | Current  | Amount of the cards "Reckless Charge" Inside player's deck.                                                |
|  ❌   |  ⛔  | do2.run.cards.deck.SPT               | Current  | Amount of the cards "Sprint" Inside player's deck.                                                         |
|  ❌   |  ⛔  | do2.run.cards.deck.NIL               | Current  | Amount of the cards "Nimble Looting" Inside player's deck.                                                 |
|  ❌   |  ⛔  | do2.run.cards.deck.SAG               | Current  | Amount of the cards "Smash and Grab" Inside player's deck.                                                 |
|  ❌   |  ⛔  | do2.run.cards.deck.QUI               | Current  | Amount of the cards "Quickstep" Inside player's deck.                                                      |
|  ❌   |  ⛔  | do2.run.cards.deck.SUU               | Current  | Amount of the cards "Suit Up" Inside player's deck.                                                        |
|  ❌   |  ⛔  | do2.run.cards.deck.ADR               | Current  | Amount of the cards "Adrenaline Rush" Inside player's deck.                                                |
|  ❌   |  ⛔  | do2.run.cards.deck.EES               | Current  | Amount of the cards "Eerie Silence" Inside player's deck.                                                  |
|  ❌   |  ⛔  | do2.run.cards.deck.DUR               | Current  | Amount of the cards "Dungeon Repairs" Inside player's deck.                                                |
|  ❌   |  ⛔  | do2.run.cards.deck.SWA               | Current  | Amount of the cards "Swagger" Inside player's deck.                                                        |
|  ❌   |  ⛔  | do2.run.cards.deck.CHS               | Current  | Amount of the cards "Chill Step" Inside player's deck.                                                     |
|  ❌   |  ⛔  | do2.run.cards.deck.SPR               | Current  | Amount of the cards "Speed Runner" Inside player's deck.                                                   |
|  ❌   |  ⛔  | do2.run.cards.deck.EOP               | Current  | Amount of the cards "Eyes on the Prize" Inside player's deck.                                              |
|  ❌   |  ⛔  | do2.run.cards.deck.PIB               | Current  | Amount of the cards "Pirate's Booty" Inside player's deck.                                                 |
|  ❌   |  ⛔  | do2.run.cards.deck.HAS               | Current  | Amount of the cards "Haste" Inside player's deck.                                                          |
|  ❌   |  ⛔  | do2.run.cards.deck.COS               | Current  | Amount of the cards "Cold Snap" Inside player's deck.                                                      |
|  ❌   |  ⛔  | do2.run.cards.deck.SIR               | Current  | Amount of the cards "Silent Runner" Inside player's deck.                                                  |
|  ❌   |  ⛔  | do2.run.cards.deck.FBS               | Current  | Amount of the cards "Fuzzy Bunny Slippers" Inside player's deck.                                           |
|  ❌   |  ⛔  | do2.run.cards.deck.DEF               | Current  | Amount of the cards "Deepfrost" Inside player's deck.                                                      |
|  ❌   |  ⛔  | do2.run.cards.deck.BRI               | Current  | Amount of the cards "Brilliance" Inside player's deck.                                                     |
|  ✅   |  ⛔  | do2.run.cards.deck.total             | Utility  | Total amount of cards inside player's deck.                                                                |
|  ✅   |  ⛔  | do2.run.cards.deck.commons           | Utility  | Total amount of Common cards inside player's deck.                                                         |
|  ✅   |  ⛔  | do2.run.cards.deck.uncommons         | Utility  | Total amount of Uncommon cards inside player's deck.                                                       |
|  ✅   |  ⛔  | do2.run.cards.deck.rares             | Utility  | Total amount of Rare cards inside player's deck.                                                           |
|  ✅   |  ⛔  | do2.run.cards.deck.legendaries       | Utility  | Total amount of Legendary cards inside player's deck.                                                      |
|  ✅   |  ⛔  | do2.run.cards.deck.ethereals         | Utility  | Total amount of Ethereal cards inside player's deck.                                                       |
|  ✅   |  ⛔  | do2.run.cards.deck.permanents        | Utility  | Total amount of Permanent cards inside player's deck.                                                      |
|  ✅   |  ✅  | do2.run.items.embers                 | Current  | Current amount of Frost Embers the player has picked up.                                                   |
|  ✅   |  ✅  | do2.run.items.coins                  | Current  | Current amount of Coins the player has picked up.                                                          |
|  ✅   |  ✅  | do2.run.items.crowns                 | Current  | Current amount of Crowns the player has picked up.                                                         |
|  ✅   |  ✅  | do2.run.items.kits                   | Current  | Current amount of Rusty Kits the player has picked up.                                                     |
|  ✅   |  ✅  | do2.run.items.pumpkins               | Current  | Current amount of Pumpkins the player has picked up.                                                       |
|  ✅   |  ✅  | do2.run.items.bone_meal              | Current  | Current amount of Bone Meal the player has picked up.                                                      |
|  ✅   |  ✅  | do2.run.items.sweet_berries          | Current  | Current amount of Sweet Berries the player has picked up.                                                  |
|  ✅   |  ✅  | do2.run.items.pork_chops             | Current  | Current amount of Pork Chops the player has picked up.                                                     |
|  ✅   |  ✅  | do2.run.items.key_2                  | Current  | Current amount of Level 2 Keys the player has picked up.                                                   |
|  ✅   |  ✅  | do2.run.items.key_3                  | Current  | Current amount of Level 3 Keys the player has picked up.                                                   |
|  ✅   |  ✅  | do2.run.items.key_4                  | Current  | Current amount of Level 4 Keys the player has picked up.                                                   |
|  ✅   |  ✅  | do2.run.items.bombs                  | Current  | Current amount of Bombs the player has picked up.                                                          |
|  ❌   |  ⛔  | do2.run.convertedArtifake            | Current  | Boolean of whether player has converted their Artifact.                                                    |
|  ✅   |  ✅  | do2.run.foundArtifact                | Current  | CustomModelData's ID of artifact found. (0 = no artifact found)                                            |
|  ✅   |  ✅  | do2.artifacts.PCL                    |  Total   | Total amount of the artifact "Pearl of Cleansing" found by the player.                                     |
|  ✅   |  ✅  | do2.artifacts.HGT                    |  Total   | Total amount of the artifact "Horn of the G.O.A.T" found by the player.                                    |
|  ✅   |  ✅  | do2.artifacts.CUS                    |  Total   | Total amount of the artifact "Chisel of the Undead Sculptress" found by the player.                        |
|  ✅   |  ✅  | do2.artifacts.BAP                    |  Total   | Total amount of the artifact "Butcher's Apron" found by the player.                                        |
|  ✅   |  ✅  | do2.artifacts.HYB                    |  Total   | Total amount of the artifact "Hypnotic Bandana" found by the player.                                       |
|  ✅   |  ✅  | do2.artifacts.WGG                    |  Total   | Total amount of the artifact "Wand of Gorgeousness" found by the player.                                   |
|  ✅   |  ✅  | do2.artifacts.WKN                    |  Total   | Total amount of the artifact "Knight's Helm" found by the player.                                          |
|  ✅   |  ✅  | do2.artifacts.BED                    |  Total   | Total amount of the artifact "Bionic Eye of Doom" found by the player.                                     |
|  ✅   |  ✅  | do2.artifacts.HST                    |  Total   | Total amount of the artifact "The Hidden Stache" found by the player.                                      |
|  ✅   |  ✅  | do2.artifacts.GGS                    |  Total   | Total amount of the artifact "Goggles of Symmetry" found by the player.                                    |
|  ✅   |  ✅  | do2.artifacts.GDE                    |  Total   | Total amount of the artifact "Golden Eye" found by the player.                                             |
|  ✅   |  ✅  | do2.artifacts.PWS                    |  Total   | Total amount of the artifact "Pocket Watch of Shreeping" found by the player.                              |
|  ✅   |  ✅  | do2.artifacts.OFP                    |  Total   | Total amount of the artifact "An Old Friend's Pickaxe" found by the player.                                |
|  ✅   |  ✅  | do2.artifacts.GGR                    |  Total   | Total amount of the artifact "Gem of Greatness" found by the player.                                       |
|  ✅   |  ✅  | do2.artifacts.CD1                    |  Total   | Total amount of the artifact "CF-135" found by the player.                                                 |
|  ✅   |  ✅  | do2.artifacts.SPS                    |  Total   | Total amount of the artifact "Staff of the Pink Shepherd" found by the player.                             |
|  ✅   |  ✅  | do2.artifacts.TLS                    |  Total   | Total amount of the artifact "The Slab" found by the player.                                               |
|  ✅   |  ✅  | do2.artifacts.SKA                    |  Total   | Total amount of the artifact "The Skadoodler" found by the player.                                         |
|  ✅   |  ✅  | do2.artifacts.MDM                    |  Total   | Total amount of the artifact "Mug of the Dungeon Master" found by the player.                              |
|  ✅   |  ✅  | do2.artifacts.MKY                    |  Total   | Total amount of the artifact "The Master's Key" found by the player.                                       |
|  ✅   |  ⛔  | do2.artifakes.PCL                    |  Total   | Total amount of the artifact "Pearl of Cleansing" converted to an artifake.                                |
|  ✅   |  ⛔  | do2.artifakes.HGT                    |  Total   | Total amount of the artifact "Horn of the G.O.A.T" converted to an artifake.                               |
|  ✅   |  ⛔  | do2.artifakes.CUS                    |  Total   | Total amount of the artifact "Chisel of the Undead Sculptress" converted to an artifake.                   |
|  ✅   |  ⛔  | do2.artifakes.BAP                    |  Total   | Total amount of the artifact "Butcher's Apron" converted to an artifake.                                   |
|  ✅   |  ⛔  | do2.artifakes.HYB                    |  Total   | Total amount of the artifact "Hypnotic Bandana" converted to an artifake.                                  |
|  ✅   |  ⛔  | do2.artifakes.WGG                    |  Total   | Total amount of the artifact "Wand of Gorgeousness" converted to an artifake.                              |
|  ✅   |  ⛔  | do2.artifakes.WKN                    |  Total   | Total amount of the artifact "Knight's Helm" converted to an artifake.                                     |
|  ✅   |  ⛔  | do2.artifakes.BED                    |  Total   | Total amount of the artifact "Bionic Eye of Doom" converted to an artifake.                                |
|  ✅   |  ⛔  | do2.artifakes.HST                    |  Total   | Total amount of the artifact "The Hidden Stache" converted to an artifake.                                 |
|  ✅   |  ⛔  | do2.artifakes.GGS                    |  Total   | Total amount of the artifact "Goggles of Symmetry" converted to an artifake.                               |
|  ✅   |  ⛔  | do2.artifakes.GDE                    |  Total   | Total amount of the artifact "Golden Eye" converted to an artifake.                                        |
|  ✅   |  ⛔  | do2.artifakes.PWS                    |  Total   | Total amount of the artifact "Pocket Watch of Shreeping" converted to an artifake.                         |
|  ✅   |  ⛔  | do2.artifakes.OFP                    |  Total   | Total amount of the artifact "An Old Friend's Pickaxe" converted to an artifake.                           |
|  ✅   |  ⛔  | do2.artifakes.GGR                    |  Total   | Total amount of the artifact "Gem of Greatness" converted to an artifake.                                  |
|  ✅   |  ⛔  | do2.artifakes.CD1                    |  Total   | Total amount of the artifact "CF-135" converted to an artifake.                                            |
|  ✅   |  ⛔  | do2.artifakes.SPS                    |  Total   | Total amount of the artifact "Staff of the Pink Shepherd" converted to an artifake.                        |
|  ✅   |  ⛔  | do2.artifakes.TLS                    |  Total   | Total amount of the artifact "The Slab" converted to an artifake.                                          |
|  ✅   |  ⛔  | do2.artifakes.SKA                    |  Total   | Total amount of the artifact "The Skadoodler" converted to an artifake.                                    |
|  ✅   |  ⛔  | do2.artifakes.MDM                    |  Total   | Total amount of the artifact "Mug of the Dungeon Master" converted to an artifake.                         |
|  ✅   |  ⛔  | do2.artifakes.MKY                    |  Total   | Total amount of the artifact "The Master's Key" converted to an artifake.                                  |














