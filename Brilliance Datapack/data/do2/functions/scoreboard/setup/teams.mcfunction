team add do2.players
team modify do2.players displayName ["",{"text":"Decked Out 2","color":"aqua"},{"text":" Players","color":"green"}]
team modify do2.players color green

team add do2.spectators
team modify do2.spectators displayName ["",{"text":"Decked Out 2","color":"aqua"},{"text":" Spectators","color":"gray"}]
team modify do2.spectators color gray

team add do2.ghosts
team modify do2.ghosts displayName ["",{"text":"Decked Out 2","color":"aqua"},{"text":" Ghosts","color":"red"}]
team modify do2.ghosts color red


# Note, slimes split into smaller slimes.
# Those smaller slimes are insta despawned as they do not inherit the do2.manually_spawned tag
# However, slimes do inherit custom names, so we'll give them a custom name.
# However, we don't want the name visible. So we create a custom team to hide their name
team add do2.manually_spawned_slimes "DO2 Manual Spawned Slimes"
team modify do2.manually_spawned_slimes nametagVisibility never
