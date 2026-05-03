execute if block ~ ~ ~ dropper[facing=east] run tag @s add alch.east_west
execute if block ~ ~ ~ dropper[facing=west] run tag @s add alch.east_west
execute if block ~ ~ ~ dropper[facing=north] run tag @s add alch.north_south
execute if block ~ ~ ~ dropper[facing=south] run tag @s add alch.north_south
execute if block ~ ~ ~ dropper[facing=up] run tag @s add alch.up_down
execute if block ~ ~ ~ dropper[facing=down] run tag @s add alch.up_down
setblock ~ ~ ~ light[level=0]
summon item_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:structure_block",count:1,components:{"minecraft:item_model": "alchemika:block_model/copper_pipe/main"}},NoGravity:1b,Tags:["smithed.entity","smithed.strict","smithed.block","alch.pipe","alch.copper_pipe","alch.ticking"]}
execute if entity @s[tag=alch.east_west] run tag @n[tag=alch.copper_pipe] add alch.east_west_default
execute if entity @s[tag=alch.north_south] run tag @n[tag=alch.copper_pipe] add alch.north_south_default
execute if entity @s[tag=alch.up_down] run tag @n[tag=alch.copper_pipe] add alch.up_down_default
tag @s remove alch.east_west
tag @s remove alch.north_south
tag @s remove alch.up_down
execute as @n[tag=alch.copper_pipe] at @s run function alchemika:block/copper_pipe/place_as