# Setup
 - Make sure coordinates `0 0 0` in the `overworld` is available to hold a `"minecraft:barrel"`. Atm a custom dimension, can solve this but felt unnecessary for a single block.
 - Install the datapack, and run `/function seeded_random:wand`.
 - Decide on your seed, or instead be aware it'll be on its default seed `16385`. Can set seed via `/scoreboard players set $seed seeded_random.seed <integer>`
 - Use the wand to right-click your randomization methods.

# todo
- drop/spit act unique instead of identical, have spit include random velocity. Check if drop has random velocity.
- Have dropper/dispenser, delay by 4 game ticks, due to how redstone works.
- default seed be random
- inv pointing all directions
- tree seeded randomizations
- multi-seeded-random with multible unique seeds. How MC does seeded random.
- Make a resource pack that can skin cmd blocks with block data including the seeded cmd inside.
