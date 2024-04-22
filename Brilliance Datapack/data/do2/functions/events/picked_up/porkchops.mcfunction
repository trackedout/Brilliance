# determine how many porkchops we need to give them back while clearing them.
execute store result score @s do2.utility.chopsToGive run clear @s cooked_porkchop{tracked:0b}

# - Start Log -
tag @s add chopsPickUpLogTarget
execute as @a[scores={do2.logs.pickups=1..}] if score @p[tag=chopsPickUpLogTarget] do2.utility.chopsToGive matches 1 run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=chopsPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=chopsPickUpLogTarget]","objective":"do2.utility.chopsToGive"}},{"text":" porkchop."}]
execute as @a[scores={do2.logs.pickups=1..}] if score @p[tag=chopsPickUpLogTarget] do2.utility.chopsToGive matches 2.. run tellraw @s ["",{"text":"§f[§9B§r]: "},{"selector":"@p[tag=chopsPickUpLogTarget]"},{"text":" picked up §b"},{"color":"aqua","score":{"name":"@p[tag=chopsPickUpLogTarget]","objective":"do2.utility.chopsToGive"}},{"text":" porkchops."}]
tag @s remove chopsPickUpLogTarget
# - End Log -

#cycle giving porkchop
function do2:events/picked_up/cycle/porkchops

