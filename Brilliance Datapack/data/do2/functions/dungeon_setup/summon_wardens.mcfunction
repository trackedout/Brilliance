# Best to make sure we don't have duplicate Wardens
kill @e[type=warden]

# Level 3 Wardens
execute at @e[type=area_effect_cloud,tag=L3Z1,limit=1,sort=random] run summon warden ~ ~ ~ {Invulnerable: 1b, Tags: ["L3Z1"],  Health: 500f, CustomName: '{"text":"Pain"}', Fire: -1s}
execute at @e[type=area_effect_cloud,tag=L3Z2,limit=1,sort=random] run summon warden ~ ~ ~ {Invulnerable: 1b, Tags: ["L3Z2"],  Health: 500f, CustomName: '{"text":"Panic"}', Fire: -1s}
execute at @e[type=area_effect_cloud,tag=L3Z3,limit=1,sort=random] run summon warden ~ ~ ~ {Invulnerable: 1b, Tags: ["L3Z3"],  Health: 500f, CustomName: '{"text":"Pancakes"}', Fire: -1s}

# Level 4 Wardens
execute at @e[type=area_effect_cloud,tag=L4Z1,limit=1,sort=random] run summon warden ~ ~ ~ {Invulnerable: 1b, Tags: ["L4Z1"],  Health: 500f, CustomName: '{"text":"Blinky"}', Fire: -1s}
execute at @e[type=area_effect_cloud,tag=L4Z2,limit=1,sort=random] run summon warden ~ ~ ~ {Invulnerable: 1b, Tags: ["L4Z2"],  Health: 500f, CustomName: '{"text":"Inky"}', Fire: -1s}
execute at @e[type=area_effect_cloud,tag=L4Z3,limit=1,sort=random] run summon warden ~ ~ ~ {Invulnerable: 1b, Tags: ["L4Z3"],  Health: 500f, CustomName: '{"text":"Pinky"}', Fire: -1s}

