# determine how many level_3_keys we need to give them back while clearing them.
execute store result score @s do2.utility.key_3ToGive run clear @s iron_nugget{tracked:0b,CustomModelData:203}

# - Start Log -
tag @s add key_3PickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] if score @p[tag=key_3PickUpLogTarget] do2.utility.key_3sToGive matches 1 run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=key_3PickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=key_3PickUpLogTarget]","objective":"do2.utility.key_3sToGive"}},{"text":" level 3 key."}]
execute as @a[scores={do2.logs.pickups=1..}] if score @p[tag=key_3PickUpLogTarget] do2.utility.key_3sToGive matches 2.. run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=key_3PickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=key_3PickUpLogTarget]","objective":"do2.utility.key_3sToGive"}},{"text":" level 3 keys."}]
tag @s remove key_3PickUpLogTarget
# - End Log -

#cycle giving level_3_keys
function do2:events/picked_up/cycle/key_3

