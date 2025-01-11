execute as @e[type=ravager,x=-626,dx=30,y=44,dy=11,z=1958,dz=15] run tag @s add startZoneRavager
execute as @e[type=ravager,x=-625,dx=26,y=44,dy=11,z=1973,dz=15] run tag @s add startZoneRavager

scoreboard objectives add do2.tests.startZoneRavagerCount dummy
scoreboard players set $dungeon do2.tests.startZoneRavagerCount 0
execute as @e[tag=startZoneRavager] run scoreboard players add $dungeon do2.tests.startZoneRavagerCount 1

execute if score $dungeon do2.tests.startZoneRavagerCount matches 1.. as @e[tag=startZoneRavager,limit=1,sort=random] run tag @s add teleportMeAway

execute as @e[tag=teleportMeAway,tag=L1Z1] run tp @s @e[type=marker,tag=L1Z1,limit=1,sort=random]
execute as @e[tag=teleportMeAway,tag=L1Z2] run tp @s @e[type=marker,tag=L1Z2,limit=1,sort=random]

# Cleanup
execute as @e[tag=teleportMeAway] run tag @s remove teleportMeAway
execute as @e[tag=startZoneRavager] run tag @s remove startZoneRavager
execute if score $dungeon do2.tests.startZoneRavagerCount matches 1.. run function do2:entity_controller/ensure_1_ravager_at_start
scoreboard objectives remove do2.tests.startZoneRavagerCount
