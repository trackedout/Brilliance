#### HIDDEN
Every advancement under `/hidden/` will:
 - CAN announce to chat
 - CAN show toast popup
 - NEVER revoked
 - SHOULD be automated.
These advancements are the player's "actual" advancements.<br>

#### VISIBLE
Ever advancement under `/visible/` will:
 - SHOULDN'T announce to chat
 - SHOULDN'T show toast popup
 - ALWAYS is revoked frequently.
 - MUST have trigger set to "impossible"
These advancements are only for display purposes, the player can use these to see their progress

## The Process:
Every time a player rejoins or the datapack loads:
- the player LOSES all visible advancements
- the player REGAINS all visible advancements roots in order.
- the player REGAINS all visible advancements that has a hidden advancement unlocked by the player.

