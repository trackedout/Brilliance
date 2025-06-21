execute unless entity @a[x=-492,dx=9,y=112,dy=5,z=1973,dz=14] run fill -485 114 1975 -485 114 1985 minecraft:powder_snow replace air
execute unless entity @a[x=-492,dx=9,y=112,dy=5,z=1973,dz=14] run fill -486 113 1975 -486 113 1985 minecraft:powder_snow replace air
execute unless entity @a[x=-492,dx=9,y=112,dy=5,z=1973,dz=14] run return

execute as @a[x=-492,dx=9,y=112,dy=5,z=1973,dz=14] if entity @s[nbt={SelectedItem:{tag:{potentialEasterEgg:1b}}}] run fill -485 114 1975 -486 113 1985 air replace minecraft:powder_snow
