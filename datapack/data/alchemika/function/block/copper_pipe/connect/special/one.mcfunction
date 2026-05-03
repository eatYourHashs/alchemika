execute if entity @s[tag=alch.east] run tag @s add alch.west
execute if entity @s[tag=alch.west] run tag @s add alch.east
execute if entity @s[tag=alch.north] run tag @s add alch.south
execute if entity @s[tag=alch.south] run tag @s add alch.north
execute if entity @s[tag=alch.up] run tag @s add alch.down
execute if entity @s[tag=alch.down] run tag @s add alch.up