scoreboard players operation #current do2.score.gui = $embers do2.score.gui
execute if score #current do2.score.gui matches 16.. run scoreboard players set #current do2.score.gui 15
execute store result score #previous do2.score.gui run data get storage do2:gui CurrentLevels.embers
execute unless score #current do2.score.gui = #previous do2.score.gui run function do2:gui/display/update_embers
scoreboard players operation #current do2.score.gui = $treasure do2.score.gui
execute if score #current do2.score.gui matches 16.. run scoreboard players set #current do2.score.gui 15
execute store result score #previous do2.score.gui run data get storage do2:gui CurrentLevels.treasure
execute unless score #current do2.score.gui = #previous do2.score.gui run function do2:gui/display/update_treasure
scoreboard players operation #current do2.score.gui = $hazard_block do2.score.gui
execute if score #current do2.score.gui matches 16.. run scoreboard players set #current do2.score.gui 15
execute store result score #previous do2.score.gui run data get storage do2:gui CurrentLevels.hazard_block
execute unless score #current do2.score.gui = #previous do2.score.gui run function do2:gui/display/update_hazard_block
scoreboard players operation #current do2.score.gui = $clank_block do2.score.gui
execute if score #current do2.score.gui matches 16.. run scoreboard players set #current do2.score.gui 15
execute store result score #previous do2.score.gui run data get storage do2:gui CurrentLevels.clank_block
execute unless score #current do2.score.gui = #previous do2.score.gui run function do2:gui/display/update_clank_block
scoreboard players operation #current do2.score.gui = $cards do2.score.gui
execute if score #current do2.score.gui matches 41.. run scoreboard players set #current do2.score.gui 40
execute store result score #previous do2.score.gui run data get storage do2:gui CurrentLevels.cards
execute unless score #current do2.score.gui = #previous do2.score.gui run function do2:gui/display/update_cards

