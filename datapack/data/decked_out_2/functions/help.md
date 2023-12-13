All decked out scoreboard and tag references currently use the do. prefix. i.e.
> scoreboard players set @s do.runs 1
>
> tag @s add do.running

Furthermore scoreboard values that are called on a per-run basis have the do.run. prefix. i.e.
> scoreboard players add @s do.run.difficulty 3
>
> scoreboard players set @s do.run.dead 1

WIP/ scoreboard values related to cards and decks use the do.card. prefix.

Any scoreboard values that aren't used for tracking but instead are for automating functions have the do.utility. prefix. i.e.
> scoreboard players set @s do.utility.trackLeaves 0
> 
> scoreboard players set @s do.utility.timer 3600
