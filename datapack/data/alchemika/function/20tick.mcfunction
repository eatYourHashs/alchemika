execute as @a at @s run function alchemika:entity/player/20tick
execute as @e[tag=alch.20ticking] at @s run function alchemika:entity/all/20tick
schedule function alchemika:20tick 20t replace
