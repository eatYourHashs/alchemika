scoreboard players set $temp.count alch.dummy 0
data modify storage alchemika:storage temp.cauldron set from entity @s item.components."minecraft:custom_data".alch_dat.cauldron
execute store result score $temp.count alch.dummy run data get storage alchemika:storage temp.cauldron
execute if score $temp.count alch.dummy matches 1.. run function alchemika:block/cauldron/interact/stir/iter_material1 with storage alchemika:storage temp.cauldron[0]
data remove entity @e[tag=alch.cauldron_interaction,limit=1,sort=nearest] interaction
tag @s remove alch.matched