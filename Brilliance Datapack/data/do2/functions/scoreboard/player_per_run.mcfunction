# Ignore TANGOCAM
execute if entity @s[tag=do2.fakePlayer] run return 0

# - Start Log -
tag @s add playerSetupLogTarget
execute as @a[scores={do2.logs.datapack_setup=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Setting up "},{"selector":"@p[tag=playerSetupLogTarget]"},{"text":" per run scores."}]
tag @s remove playerSetupLogTarget

# reset player's threecoursemeal track
scoreboard players set @s do2.run.threecoursemeal 0
execute unless entity @s[advancements={do2:hidden/adventuring/eat_three_uniques=true}] run advancement revoke @s only do2:visible/adventuring/eat_three_uniques

# reset player's play_5_moc on 1 run.
execute unless entity @s[advancements={do2:hidden/cards/play_5_moc=true}] run advancement revoke @s only do2:visible/cards/play_5_moc

# reset unique scores
scoreboard players set @s do2.run.depth_charge_success 0
scoreboard players set @s do2.run.deepest_floor 0
scoreboard players set @s do2.run.aritfact_floor 0
scoreboard players set @s do2.run.artifact_lodestone_id 0
scoreboard players set @s do2.run.death_dungeon_location 0

# Ensure Gamemode
execute if entity @s[gamemode=adventure] run scoreboard players set @s do2.utility.oldGamemode 0
execute if entity @s[gamemode=survival] run scoreboard players set @s do2.utility.oldGamemode 1
execute if entity @s[gamemode=creative] run scoreboard players set @s do2.utility.oldGamemode 2
execute if entity @s[gamemode=spectator] run scoreboard players set @s do2.utility.oldGamemode 3
execute if score $dungeon do2.config.forceGamemode matches 1 unless entity @s[gamemode=survival] unless entity @s[gamemode=adventure] unless entity @s[tag=do2.staff] run gamemode adventure
execute if score $dungeon do2.config.forceGamemode matches 1 unless entity @s[gamemode=survival] unless entity @s[gamemode=adventure] if entity @s[tag=do2.staff] run tellraw @s ["",{"text":"§f[§9B§r]: You have the tag [§bdo2.staff§r], and this has stopped:\n - §5gamemode adventure "},{"selector":"@s","color":"dark_purple"},{"text":"\n§f[§9B§r]: Click "},{"text":"§b[here]","clickEvent":{"action":"run_command","value":"/gamemode adventure @s"}},{"text":" to run the command anyway."}]

# - RESET GENERAL -
scoreboard players set @s do2.run.foundArtifact 0
scoreboard players set @s do2.run.has_won 0
scoreboard players set @s do2.run.has_died 0
scoreboard players set @s do2.utility.deathCount 0


# - RESET ITEMS -
scoreboard players set @s do2.run.items.embers 0
scoreboard players set @s do2.run.items.coins 0
scoreboard players set @s do2.run.items.crowns 0
scoreboard players set @s do2.run.items.kits 0
scoreboard players set @s do2.run.items.pumpkins 0
scoreboard players set @s do2.run.items.bone_meals 0
scoreboard players set @s do2.run.items.sweet_berries 0
scoreboard players set @s do2.run.items.glow_berries 0
scoreboard players set @s do2.run.items.pork_chops 0
scoreboard players set @s do2.run.items.key_2 0
scoreboard players set @s do2.run.items.key_3 0
scoreboard players set @s do2.run.items.key_4 0
scoreboard players set @s do2.run.items.bombs 0

# - RESET CARDS PLAYED -
scoreboard players set @s do2.run.cards.played.MOC 0
scoreboard players set @s do2.run.cards.played.SNE 0
scoreboard players set @s do2.run.cards.played.STA 0
scoreboard players set @s do2.run.cards.played.TRH 0
scoreboard players set @s do2.run.cards.played.EMS 0
scoreboard players set @s do2.run.cards.played.EVA 0
scoreboard players set @s do2.run.cards.played.TRL 0
scoreboard players set @s do2.run.cards.played.LAS 0
scoreboard players set @s do2.run.cards.played.FRF 0
scoreboard players set @s do2.run.cards.played.SEW 0
scoreboard players set @s do2.run.cards.played.BES 0
scoreboard players set @s do2.run.cards.played.BST 0
scoreboard players set @s do2.run.cards.played.REC 0
scoreboard players set @s do2.run.cards.played.SPT 0
scoreboard players set @s do2.run.cards.played.NIL 0
scoreboard players set @s do2.run.cards.played.SAG 0
scoreboard players set @s do2.run.cards.played.QUI 0
scoreboard players set @s do2.run.cards.played.SUU 0
scoreboard players set @s do2.run.cards.played.ADR 0
scoreboard players set @s do2.run.cards.played.EES 0
scoreboard players set @s do2.run.cards.played.DUR 0
scoreboard players set @s do2.run.cards.played.SWA 0
scoreboard players set @s do2.run.cards.played.CHS 0
scoreboard players set @s do2.run.cards.played.SPR 0
scoreboard players set @s do2.run.cards.played.EOP 0
scoreboard players set @s do2.run.cards.played.PIB 0
scoreboard players set @s do2.run.cards.played.COS 0
scoreboard players set @s do2.run.cards.played.SIR 0
scoreboard players set @s do2.run.cards.played.FBS 0
scoreboard players set @s do2.run.cards.played.DEF 0
scoreboard players set @s do2.run.cards.played.BRI 0
# TODO: reset legendaries cards played here
scoreboard players set @s do2.run.cards.played.P2W 0
scoreboard players set @s do2.run.cards.played.TAA 0
scoreboard players set @s do2.run.cards.played.PCP 0
scoreboard players set @s do2.run.cards.played.STU 0
scoreboard players set @s do2.run.cards.played.DUL 0

# - RESET STUFF BOUGHT -
scoreboard players set @s do2.run.cards.bought.1TM 0
scoreboard players set @s do2.run.cards.bought.3TM 0
scoreboard players set @s do2.run.cards.bought.5TM 0
scoreboard players set @s do2.run.cards.bought.MOC 0
scoreboard players set @s do2.run.cards.bought.SNE 0
scoreboard players set @s do2.run.cards.bought.STA 0
scoreboard players set @s do2.run.cards.bought.TRH 0
scoreboard players set @s do2.run.cards.bought.EMS 0
scoreboard players set @s do2.run.cards.bought.EVA 0
scoreboard players set @s do2.run.cards.bought.TRL 0
scoreboard players set @s do2.run.cards.bought.LAS 0
scoreboard players set @s do2.run.cards.bought.FRF 0
scoreboard players set @s do2.run.cards.bought.SEW 0
scoreboard players set @s do2.run.cards.bought.BES 0
scoreboard players set @s do2.run.cards.bought.BST 0
scoreboard players set @s do2.run.cards.bought.REC 0
scoreboard players set @s do2.run.cards.bought.SPT 0
scoreboard players set @s do2.run.cards.bought.NIL 0
scoreboard players set @s do2.run.cards.bought.SAG 0
scoreboard players set @s do2.run.cards.bought.QUI 0
scoreboard players set @s do2.run.cards.bought.SUU 0
scoreboard players set @s do2.run.cards.bought.ADR 0
scoreboard players set @s do2.run.cards.bought.EES 0
scoreboard players set @s do2.run.cards.bought.DUR 0
scoreboard players set @s do2.run.cards.bought.SWA 0
scoreboard players set @s do2.run.cards.bought.CHS 0
scoreboard players set @s do2.run.cards.bought.SPR 0
scoreboard players set @s do2.run.cards.bought.EOP 0
scoreboard players set @s do2.run.cards.bought.PIB 0
scoreboard players set @s do2.run.cards.bought.COS 0
scoreboard players set @s do2.run.cards.bought.SIR 0
scoreboard players set @s do2.run.cards.bought.FBS 0
scoreboard players set @s do2.run.cards.bought.DEF 0
scoreboard players set @s do2.run.cards.bought.BRI 0
# TODO: reset legendaries bought here
scoreboard players set @s do2.run.cards.bought.P2W 0
scoreboard players set @s do2.run.cards.bought.TAA 0
scoreboard players set @s do2.run.cards.bought.PCP 0
scoreboard players set @s do2.run.cards.bought.STU 0
scoreboard players set @s do2.run.cards.bought.DUL 0

# - RESET PER RUN SYSTEMS -
scoreboard players set @s do2.run.systems.hazard.blocked 0
scoreboard players set @s do2.run.systems.hazard.generated 0
scoreboard players set @s do2.run.systems.hazard.activated 0
scoreboard players set @s do2.run.systems.clank.blocked 0
scoreboard players set @s do2.run.systems.clank.generated 0
scoreboard players set @s do2.run.systems.maxclank.released 0
scoreboard players set @s do2.run.systems.embers.released 0
scoreboard players set @s do2.run.systems.embers.attempts 0
scoreboard players set @s do2.run.systems.treasure.released 0
scoreboard players set @s do2.run.systems.treasure.attempts 0
