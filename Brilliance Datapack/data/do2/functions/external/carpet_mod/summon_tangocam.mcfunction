execute if entity @a[name=TangoCam] run return 0
execute if entity @a[name=tangocam] run return 0

# - Start Log -
execute as @a[scores={do2.logs.dungeon_setup=3..}] run tellraw @s ["",{"text":"§f[§9B§r]: Summoning TangoCam. "}]
# - End Log -

player TangoCam spawn at -484.52 62.00 1739.16 facing 180 0 in minecraft:overworld in creative

# For uppercase TangoCam
execute if entity @p[name=TangoCam] run clear TangoCam
execute if entity @p[name=TangoCam] run give TangoCam minecraft:filled_map{map: 976,CustomModelData:201}
execute if entity @p[name=TangoCam] run tag TangoCam add do2.spectating
execute if entity @p[name=TangoCam] run tag TangoCam add do2.fakePlayer


# For lowercase tangocam
execute if entity @p[name=tangocam] run clear tangocam
execute if entity @p[name=tangocam] run give tangocam minecraft:filled_map{map: 976,CustomModelData:201}
execute if entity @p[name=tangocam] run tag tangocam add do2.spectating
execute if entity @p[name=tangocam] run tag tangocam add do2.fakePlayer
