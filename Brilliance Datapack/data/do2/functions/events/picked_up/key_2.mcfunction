# determine how many level_2_keys we need to give them back while clearing them.
execute store result score @s do2.utility.key_2ToGive run clear @s iron_nugget{tracked:0b,CustomModelData:201}

# - Start Log -
tag @s add key_2PickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] if score @p[tag=key_2PickUpLogTarget] do2.utility.key_2sToGive matches 1 run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=key_2PickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=key_2PickUpLogTarget]","objective":"do2.utility.key_2sToGive"}},{"text":" level 2 key."}]
execute as @a[scores={do2.logs.pickups=1..}] if score @p[tag=key_2PickUpLogTarget] do2.utility.key_2sToGive matches 2.. run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=key_2PickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=key_2PickUpLogTarget]","objective":"do2.utility.key_2sToGive"}},{"text":" level 2 keys."}]
tag @s remove key_2PickUpLogTarget
# - End Log -

#cycle giving level_2_keys
function do2:events/picked_up/cycle/key_2

