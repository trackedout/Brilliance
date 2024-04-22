execute if score $dungeon do2.utility.artifactValue matches ..0 run return
execute if score $dungeon do2.run.items.embers > $dungeon do2.utility.artifactValue run advancement grant @a[team=do2.players] only do2:hidden/treasure/end_more_embers_than_artifact
execute if score $dungeon do2.run.items.embers > $dungeon do2.utility.artifactValue run advancement grant @a[team=do2.ghosts] only do2:hidden/treasure/end_more_embers_than_artifact
