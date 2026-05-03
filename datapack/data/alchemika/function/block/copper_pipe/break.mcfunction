kill @n[tag=alch.copper_pipe_interaction]
playsound minecraft:block.copper.break block @a ~ ~ ~ 1 1
loot spawn ~ ~ ~ loot alchemika:item/copper_pipe
execute if block ~ ~ ~ light run setblock ~ ~ ~ air
kill @s
execute positioned ~1 ~ ~ as @n[type=item_display,tag=alch.copper_pipe,distance=..0.1] at @s run function alchemika:block/copper_pipe/update_connectivity
execute positioned ~-1 ~ ~ as @n[type=item_display,tag=alch.copper_pipe,distance=..0.1] at @s run function alchemika:block/copper_pipe/update_connectivity
execute positioned ~ ~1 ~ as @n[type=item_display,tag=alch.copper_pipe,distance=..0.1] at @s run function alchemika:block/copper_pipe/update_connectivity
execute positioned ~ ~-1 ~ as @n[type=item_display,tag=alch.copper_pipe,distance=..0.1] at @s run function alchemika:block/copper_pipe/update_connectivity
execute positioned ~ ~ ~1 as @n[type=item_display,tag=alch.copper_pipe,distance=..0.1] at @s run function alchemika:block/copper_pipe/update_connectivity
execute positioned ~ ~ ~-1 as @n[type=item_display,tag=alch.copper_pipe,distance=..0.1] at @s run function alchemika:block/copper_pipe/update_connectivity