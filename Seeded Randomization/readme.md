# Setup
 - Install the datapack, and run `/function seeded_random:wand`.
 - Decide on your seed, or instead be aware it'll be on its default seed `16385`. Can set seed via `/scoreboard players set $seed seeded_random.seed <integer>` followed by a `/reload`
 - Use the wand to right-click your randomization methods. 

# Wand
 - Obtain the wand via `/function seeded_random:wand`
 - Right click on any `dispensers` using the wand to auto setup the seeded method.
 - Use the wand to find and edit any setup seeded randomization methods.
 - Left Clicking Twice will delete the setted up the seeded method and return it to it's origin.

# todo
- Currently when transfering items, it **overwrites** first slot into the receiving inventory instead of adding into the list of inventories.
- check for hoppers entering the dispensers/droppers take first item, IF hopper isn't powered, and only every other game tick.
- drop/spit act unique instead of identical, have spit include random velocity. Check if drop has random velocity.
- Have dropper/dispenser, delay by 4 game ticks, due to how redstone works.
- default seed be random
- inv pointing all directions
- tree seeded randomizations
- multi-seeded-random with multible unique seeds. How MC does seeded random.
- Make a resource pack that can skin cmd blocks with block data including the seeded cmd inside.
