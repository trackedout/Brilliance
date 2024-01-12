# COUNT CARDS INSIDE DUNGEON HERE:
# /execute as:
# @p[tag=recieved_shulker]
# Modify:
# do2.run.cards.deck.XXX
# Replace XXX with card's code.
#------------------------------
# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Counting cards inside the deck"}]
# - End Log -

# Adding together card numbers
# Amount of cards in deck:

# - Common -
scoreboard players operation @s do2.run.cards.deck.commons += @s do2.run.cards.deck.MOC
scoreboard players operation @s do2.run.cards.deck.commons += @s do2.run.cards.deck.SNE
scoreboard players operation @s do2.run.cards.deck.commons += @s do2.run.cards.deck.STA
scoreboard players operation @s do2.run.cards.deck.commons += @s do2.run.cards.deck.TRH
scoreboard players operation @s do2.run.cards.deck.commons += @s do2.run.cards.deck.EMS

# - Uncommon -
scoreboard players operation @s do2.run.cards.deck.uncommons += @s do2.run.cards.deck.EVA
scoreboard players operation @s do2.run.cards.deck.uncommons += @s do2.run.cards.deck.TRL
scoreboard players operation @s do2.run.cards.deck.uncommons += @s do2.run.cards.deck.LAS
scoreboard players operation @s do2.run.cards.deck.uncommons += @s do2.run.cards.deck.FRF
scoreboard players operation @s do2.run.cards.deck.uncommons += @s do2.run.cards.deck.SEW
scoreboard players operation @s do2.run.cards.deck.uncommons += @s do2.run.cards.deck.BES
scoreboard players operation @s do2.run.cards.deck.uncommons += @s do2.run.cards.deck.BST
scoreboard players operation @s do2.run.cards.deck.uncommons += @s do2.run.cards.deck.REC
scoreboard players operation @s do2.run.cards.deck.uncommons += @s do2.run.cards.deck.SPT
scoreboard players operation @s do2.run.cards.deck.uncommons += @s do2.run.cards.deck.NIL
scoreboard players operation @s do2.run.cards.deck.uncommons += @s do2.run.cards.deck.SAG
scoreboard players operation @s do2.run.cards.deck.uncommons += @s do2.run.cards.deck.QUI
scoreboard players operation @s do2.run.cards.deck.uncommons += @s do2.run.cards.deck.SUU
scoreboard players operation @s do2.run.cards.deck.uncommons += @s do2.run.cards.deck.ADR

# - Rare -
scoreboard players operation @s do2.run.cards.deck.rares += @s do2.run.cards.deck.EES
scoreboard players operation @s do2.run.cards.deck.rares += @s do2.run.cards.deck.DUR
scoreboard players operation @s do2.run.cards.deck.rares += @s do2.run.cards.deck.SWA
scoreboard players operation @s do2.run.cards.deck.rares += @s do2.run.cards.deck.CHS
scoreboard players operation @s do2.run.cards.deck.rares += @s do2.run.cards.deck.SPR
scoreboard players operation @s do2.run.cards.deck.rares += @s do2.run.cards.deck.EOP
scoreboard players operation @s do2.run.cards.deck.rares += @s do2.run.cards.deck.PIB
scoreboard players operation @s do2.run.cards.deck.rares += @s do2.run.cards.deck.HAS
scoreboard players operation @s do2.run.cards.deck.rares += @s do2.run.cards.deck.COS
scoreboard players operation @s do2.run.cards.deck.rares += @s do2.run.cards.deck.SIR
scoreboard players operation @s do2.run.cards.deck.rares += @s do2.run.cards.deck.FBS
scoreboard players operation @s do2.run.cards.deck.rares += @s do2.run.cards.deck.DEF
scoreboard players operation @s do2.run.cards.deck.rares += @s do2.run.cards.deck.BRI

# - Legendaries -
# TODO: add legendaries here
# do2.run.cards.deck.legendaries

# - Ethereal -
scoreboard players operation @s do2.run.cards.deck.ethereals += @s do2.run.cards.deck.MOC
scoreboard players operation @s do2.run.cards.deck.ethereals += @s do2.run.cards.deck.P2W
scoreboard players operation @s do2.run.cards.deck.ethereals += @s do2.run.cards.deck.TAA
scoreboard players operation @s do2.run.cards.deck.ethereals += @s do2.run.cards.deck.POP
scoreboard players operation @s do2.run.cards.deck.ethereals += @s do2.run.cards.deck.DUL

# - Permanents -
scoreboard players operation @s do2.run.cards.deck.permanents += @s do2.run.cards.deck.DUL
scoreboard players operation @s do2.run.cards.deck.permanents += @s do2.run.cards.deck.TAA
scoreboard players operation @s do2.run.cards.deck.permanents += @s do2.run.cards.deck.POP
scoreboard players operation @s do2.run.cards.deck.permanents += @s do2.run.cards.deck.SUU
scoreboard players operation @s do2.run.cards.deck.permanents += @s do2.run.cards.deck.SPR
scoreboard players operation @s do2.run.cards.deck.permanents += @s do2.run.cards.deck.SIR
scoreboard players operation @s do2.run.cards.deck.permanents += @s do2.run.cards.deck.FBS

# - Total Cards: -
scoreboard players operation @s do2.run.cards.deck.total += @s do2.run.cards.deck.ethereals
scoreboard players operation @s do2.run.cards.deck.total += @s do2.run.cards.deck.commons
# MOC is inside both "ethereals" and "commons" so it gets added twice, so remove it once
scoreboard players operation @s do2.run.cards.deck.total -= @s do2.run.cards.deck.MOC
scoreboard players operation @s do2.run.cards.deck.total += @s do2.run.cards.deck.uncommons
scoreboard players operation @s do2.run.cards.deck.total += @s do2.run.cards.deck.rares
scoreboard players operation @s do2.run.cards.deck.total += @s do2.run.cards.deck.legendaries
