All decked out scoreboard and tag references currently use the do2. prefix. i.e.
> scoreboard players set @s do2.runs 1
>
> tag @s add do2.running

Furthermore scoreboard values that are called on a per-run basis have the do2.run. prefix. i.e.
> scoreboard players add @s do2.run.difficulty 3
>
> scoreboard players set @s do2.run.dead 1

WIP/ scoreboard values related to cards and decks use the do2.card. prefix.

Any scoreboard values that aren't used for tracking but instead are for automating functions have the do2.utility. prefix. i.e.
> scoreboard players set @s do2.utility.trackLeaves 0
> 
> scoreboard players set @s do2.utility.timer 3600
