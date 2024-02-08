# - Start Log -
tag @s add spectatorSetupLogTarget
execute as @a[scores={do2.logs.datapack_setup=1..}] run tellraw @s ["",{"text":"[§9B§r]: Resetting spectator "},{"selector":"@p[tag=spectatorSetupLogTarget]"},{"text":" scores."}]
tag @s remove spectatorSetupLogTarget

# - Remove Tags -
execute at @s if entity @a[tag=do2.received_shulker,distance=0.1..] @s remove do2.received_shulker
tag @s remove do2.running

# - Join Spectating -
tag @s add do2.spectating
team join do2.spectators @s
execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] run gamemode spectator


# - RESET GENERAL -
scoreboard players set @s do2.run.foundArtifact 0
scoreboard players set @s do2.run.tnt_dive 0
scoreboard players set @s do2.run.has_won 0
scoreboard players set @s do2.run.has_died 0

# - RESET ITEMS -
scoreboard players set @s do2.run.items.embers 0
scoreboard players set @s do2.run.items.coins 0
scoreboard players set @s do2.run.items.crowns 0
scoreboard players set @s do2.run.items.kits 0
scoreboard players set @s do2.run.items.pumpkins 0
scoreboard players set @s do2.run.items.bone_meal 0
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
scoreboard players set @s do2.run.cards.played.HAS 0
scoreboard players set @s do2.run.cards.played.COS 0
scoreboard players set @s do2.run.cards.played.SIR 0
scoreboard players set @s do2.run.cards.played.FBS 0
scoreboard players set @s do2.run.cards.played.DEF 0
scoreboard players set @s do2.run.cards.played.BRI 0
# TODO: reset legendaries cards played here
scoreboard players set @s do2.run.cards.played.P2W 0
scoreboard players set @s do2.run.cards.played.TAA 0
scoreboard players set @s do2.run.cards.played.POP 0
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
scoreboard players set @s do2.run.cards.bought.HAS 0
scoreboard players set @s do2.run.cards.bought.COS 0
scoreboard players set @s do2.run.cards.bought.SIR 0
scoreboard players set @s do2.run.cards.bought.FBS 0
scoreboard players set @s do2.run.cards.bought.DEF 0
scoreboard players set @s do2.run.cards.bought.BRI 0
# TODO: reset legendaries bought here
scoreboard players set @s do2.run.cards.bought.P2W 0
scoreboard players set @s do2.run.cards.bought.TAA 0
scoreboard players set @s do2.run.cards.bought.POP 0
scoreboard players set @s do2.run.cards.bought.STU 0
scoreboard players set @s do2.run.cards.bought.DUL 0
