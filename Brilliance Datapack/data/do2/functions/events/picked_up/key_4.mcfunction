# determine how many level_3_keys we need to give them back while clearing them.
execute store result score @s do2.utility.key_4ToGive run clear @s iron_nugget{tracked:0b,CustomModelData:209}

# - Start Log -
tag @s add key_4PickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] if score @p[tag=key_4PickUpLogTarget] do2.utility.key_4sToGive matches 1 run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=key_4PickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=key_4PickUpLogTarget]","objective":"do2.utility.key_4sToGive"}},{"text":" level 4 key."}]
execute as @a[scores={do2.logs.pickups=1..}] unless score @p[tag=key_4PickUpLogTarget] do2.utility.key_4sToGive matches 1 run tellraw @s ["",{"text":"[§9B§r]: "},{"selector":"@p[tag=key_4PickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=key_4PickUpLogTarget]","objective":"do2.utility.key_4sToGive"}},{"text":" level 4 keys."}]
tag @s remove key_4PickUpLogTarget
# - End Log -

#cycle giving level_4_keys
function do2:events/picked_up/cycle/key_4

