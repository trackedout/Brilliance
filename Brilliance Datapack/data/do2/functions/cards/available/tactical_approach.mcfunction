#  - Start Log -
execute as @a[scores={do2.logs.cards=1..}] run tellraw @s ["",{"text":"§f[§9B§r]: Card Available: ("},{"text":"§aTactical Approach","hoverEvent":{"action":"show_item","value":"{id:'minecraft:iron_nugget', Count:1, tag:{NameFormat:{color:"#fed83d",OriginalName:'{"color":"#FED83D","text":"✲≡ Tactical Approach ≡✲"}',ModifiedName:'{"color":"#FED83D","text":"✲≡ Tactical Approach ≡✲"}'},CustomRoleplayData:1b,CustomModelData:108,display:{Name:'{"color":"#FED83D","text":"✲≡ Tactical Approach ≡✲"}'},tracked:0b}}"}},{"text":")"}]
# - End Log -

# Note that this card has been available.
execute as @p[tag=do2.received_shulker] run scoreboard players set @s do2.run.cards.available.TAA 1
execute as @p[tag=do2.received_shulker] run scoreboard players add @s do2.cards.available.TAA 1
scoreboard players set $dungeon do2.run.cards.available.TAA 1

scoreboard players add $dungeon do2.cards.available.TAA 1


# Agronet Event Handling
scoreboard players set $dungeon do2.agronet.card_available 32
execute as @p[tag=do2.received_shulker] run function do2:agronet/card_available
