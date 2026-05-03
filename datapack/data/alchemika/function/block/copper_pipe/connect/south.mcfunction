tag @s add alch.south
scoreboard players add $temp.connections alch.dummy 1
execute if entity @s[tag=alch.origin] as @n[type=item_display,tag=alch.pipe,distance=..0.1] at @s run function alchemika:block/copper_pipe/update_connectivity