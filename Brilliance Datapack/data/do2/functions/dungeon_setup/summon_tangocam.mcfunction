# - Start Log -
execute as @a[scores={do2.utility.logLevel=2..}] run tellraw @s ["",{"text":"[§9B§r]: Summoning TangoCam. "}]
# - End Log -

player TangoCam spawn at -484.52 62.00 1739.16 facing 180 0 in minecraft:overworld in creative

# For uppercase TangoCam
execute if entity @p[name=TangoCam] run clear TangoCam
execute if entity @p[name=TangoCam] run give TangoCam minecraft:filled_map{map: 976}
execute if entity @p[name=TangoCam] run tag TangoCam add do2.spectating

# For lowercase tangocam
execute if entity @p[name=tangocam] run clear tangocam
execute if entity @p[name=tangocam] run give tangocam minecraft:filled_map{map: 976}
execute if entity @p[name=tangocam] run tag tangocam add do2.spectating
