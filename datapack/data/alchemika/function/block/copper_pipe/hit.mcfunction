tag @s add alch.interacter
execute at @s as @e[tag=alch.copper_pipe_interaction,distance=..10] if data entity @s attack at @s positioned ~ ~0.5 ~ as @n[tag=alch.copper_pipe] at @s run function alchemika:block/copper_pipe/break
advancement revoke @s only alchemika:technical/pipe_hit
tag @s remove alch.interacter