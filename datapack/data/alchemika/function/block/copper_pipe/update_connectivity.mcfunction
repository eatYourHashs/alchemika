tag @s remove alch.east
tag @s remove alch.west
tag @s remove alch.north
tag @s remove alch.south
tag @s remove alch.up
tag @s remove alch.down
execute unless entity @s[tag=alch.origin] run scoreboard players operation $temp.origin_connections alch.dummy = $temp.connections alch.dummy
scoreboard players set $temp.connections alch.dummy 0
execute positioned ~1 ~ ~ if entity @n[type=item_display,tag=alch.pipe,distance=..0.1] run function alchemika:block/copper_pipe/connect/east
execute positioned ~-1 ~ ~ if entity @n[type=item_display,tag=alch.pipe,distance=..0.1] run function alchemika:block/copper_pipe/connect/west
execute positioned ~ ~ ~1 if entity @n[type=item_display,tag=alch.pipe,distance=..0.1] run function alchemika:block/copper_pipe/connect/south
execute positioned ~ ~ ~-1 if entity @n[type=item_display,tag=alch.pipe,distance=..0.1] run function alchemika:block/copper_pipe/connect/north
execute positioned ~ ~1 ~ if entity @n[type=item_display,tag=alch.pipe,distance=..0.1] run function alchemika:block/copper_pipe/connect/up
execute positioned ~ ~-1 ~ if entity @n[type=item_display,tag=alch.pipe,distance=..0.1] run function alchemika:block/copper_pipe/connect/down
execute if score $temp.connections alch.dummy matches 0 run function alchemika:block/copper_pipe/connect/special/zero
execute if score $temp.connections alch.dummy matches 1 run function alchemika:block/copper_pipe/connect/special/one
execute unless entity @s[tag=alch.origin] run scoreboard players operation $temp.connections alch.dummy = $temp.origin_connections alch.dummy
tag @s remove alch.origin
function alchemika:block/copper_pipe/update_visuals