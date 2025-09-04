function alchemika:block/phial_rack/display_reset_model
summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:["alch.current"]}
item replace entity @n[type=item,tag=alch.current] contents from entity @s contents
tag @n[type=item,tag=alch.current] remove alch.current
data remove entity @s item