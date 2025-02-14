tellraw @s ["",{"text":"§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"}]

# Check if they can open the world to CO-OP
scoreboard objectives add do2.temp.canOpenServer dummy
scoreboard players set @s do2.temp.canOpenServer 1
execute unless score $dungeon do2.utility.onServer matches 1 run scoreboard players set @s do2.temp.canOpenServer 0
execute unless entity @s[tag=do2.received_shulker] run scoreboard players set @s do2.temp.canOpenServer 0
execute unless score @p[tag=do2.received_shulker] do2.utility.runType matches 1 run scoreboard players set @s do2.temp.canOpenServer 0
execute unless score $dungeon do2.run.active matches 0 run scoreboard players set @s do2.temp.canOpenServer 0


# If can open the world to the server
execute if score @s do2.temp.canOpenServer matches 1 run tellraw @s ["",{"text":"\n                                 §e§l§nCO-OP§r§f\n§fClick on §aOPEN-SERVER §fto allow people to join your instance."}]
execute unless score @s do2.temp.canOpenServer matches 1 run tellraw @s ["",{"text":"\n                                  §e§l§nCO-OP\n"}]


tellraw @s ["",{"text":"§fClick on §dMap §fto get a copy of the offhand's map."}]

# Display clickable buttons.
tellraw @s ""
execute if score @s do2.temp.canOpenServer matches 1 run tellraw @s ["",{"text":"§f[§aOPEN-SERVER§f]","clickEvent":{"action":"run_command","value":"/trigger do2.trigger.coop set 101"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to allow people to join your instance."}}},{"text":" "},{"text":"§f[§dMAP§f]","clickEvent":{"action":"run_command","value":"/trigger do2.trigger.coop set 102"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get a copy of the offhand's map."}}}]
execute unless score @s do2.temp.canOpenServer matches 1 run tellraw @s ["",{"text":"§f[§dMAP§f]","clickEvent":{"action":"run_command","value":"/trigger do2.trigger.coop set 102"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get a copy of the offhand's map."}}}]

tellraw @s ["",{"text":"\n§6-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"}]

scoreboard objectives remove do2.temp.canOpenServer
