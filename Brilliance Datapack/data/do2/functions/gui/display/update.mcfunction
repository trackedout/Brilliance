scoreboard players operation #current do2.utility.gui = $embers do2.utility.gui
execute if score #current do2.utility.gui matches 16.. run scoreboard players set #current do2.utility.gui 15
execute store result score #previous do2.utility.gui run data get storage do2:gui CurrentLevels.embers
execute unless score #current do2.utility.gui = #previous do2.utility.gui run function do2:gui/display/update_embers
scoreboard players operation #current do2.utility.gui = $treasure do2.utility.gui
execute if score #current do2.utility.gui matches 16.. run scoreboard players set #current do2.utility.gui 15
execute store result score #previous do2.utility.gui run data get storage do2:gui CurrentLevels.treasure
execute unless score #current do2.utility.gui = #previous do2.utility.gui run function do2:gui/display/update_treasure
scoreboard players operation #current do2.utility.gui = $hazard_block do2.utility.gui
execute if score #current do2.utility.gui matches 16.. run scoreboard players set #current do2.utility.gui 15
execute store result score #previous do2.utility.gui run data get storage do2:gui CurrentLevels.hazard_block
execute unless score #current do2.utility.gui = #previous do2.utility.gui run function do2:gui/display/update_hazard_block
scoreboard players operation #current do2.utility.gui = $clank_block do2.utility.gui
execute if score #current do2.utility.gui matches 16.. run scoreboard players set #current do2.utility.gui 15
execute store result score #previous do2.utility.gui run data get storage do2:gui CurrentLevels.clank_block
execute unless score #current do2.utility.gui = #previous do2.utility.gui run function do2:gui/display/update_clank_block
scoreboard players operation #current do2.utility.gui = $cards do2.utility.gui
execute if score #current do2.utility.gui matches 41.. run scoreboard players set #current do2.utility.gui 40
execute store result score #previous do2.utility.gui run data get storage do2:gui CurrentLevels.cards
execute unless score #current do2.utility.gui = #previous do2.utility.gui run function do2:gui/display/update_cards

