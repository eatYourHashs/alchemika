execute as @a at @s run function alchemika:entity/player/5tick
execute as @e[tag=alch.5ticking] at @s run function alchemika:entity/all/5tick
schedule function alchemika:5tick 5t replace
