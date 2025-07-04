tag @s add alch.interacter
execute at @s as @e[tag=alch.phial_rack_interaction,distance=..10] if data entity @s interaction at @s as @n[tag=alch.phial_rack] at @s run function alchemika:block/phial_rack/break
advancement revoke @s only alchemika:technical/phial_rack_hit
tag @s remove alch.interacter