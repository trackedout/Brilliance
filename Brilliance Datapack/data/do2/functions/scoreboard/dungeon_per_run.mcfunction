# - Start Log -
execute as @a[scores={do2.logs.datapack_setup=1..}] run tellraw @s ["",{"text":"[§9B§r]: Setting up dungeon per run scores."}]
# - End Log -

scoreboard players set $dungeon do2.run.has_won 0
scoreboard players set $dungeon do2.run.deepest_floor 0
scoreboard players set $dungeon do2.run.artifactValue 0
scoreboard players set $dungeon do2.run.player_deaths 0
scoreboard players set $dungeon do2.run.ticks 0
scoreboard players set $dungeon do2.run.seconds 0
scoreboard players set $dungeon do2.run.timeWithNoPlayers 0
scoreboard players set $dungeon do2.agronet.card_bought -1
scoreboard players set $dungeon do2.agronet.card_played -1
scoreboard players set $dungeon do2.agronet.card_available -1
scoreboard players set $dungeon do2.run.systems.clank.generated 0
scoreboard players set $dungeon do2.run.systems.clank.blocked 0
scoreboard players set $dungeon do2.run.systems.hazard.generated 0
scoreboard players set $dungeon do2.run.systems.hazard.blocked 0
scoreboard players set $dungeon do2.run.systems.hazard.activated 0
scoreboard players set $dungeon do2.run.systems.treasure.released 0
scoreboard players set $dungeon do2.run.systems.treasure.attempts 0
scoreboard players set $dungeon do2.run.systems.embers.released 0
scoreboard players set $dungeon do2.run.systems.embers.attempts 0


# - RESET ITEMS -
scoreboard players set $dungeon do2.run.items.embers 0
scoreboard players set $dungeon do2.run.items.coins 0
scoreboard players set $dungeon do2.run.items.crowns 0
scoreboard players set $dungeon do2.run.items.kits 0
scoreboard players set $dungeon do2.run.items.pumpkins 0
scoreboard players set $dungeon do2.run.items.bone_meals 0
scoreboard players set $dungeon do2.run.items.sweet_berries 0
scoreboard players set $dungeon do2.run.items.glow_berries 0
scoreboard players set $dungeon do2.run.items.pork_chops 0
scoreboard players set $dungeon do2.run.items.key_2 0
scoreboard players set $dungeon do2.run.items.key_3 0
scoreboard players set $dungeon do2.run.items.key_4 0
scoreboard players set $dungeon do2.run.items.bombs 0
