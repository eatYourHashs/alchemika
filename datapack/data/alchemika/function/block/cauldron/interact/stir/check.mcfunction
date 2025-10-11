scoreboard players set $temp.count alch.dummy 0
data modify storage alchemika:storage temp.cauldron set from entity @s item.components."minecraft:custom_data".alch_dat.cauldron
execute store result score $temp.count alch.dummy run data get storage alchemika:storage temp.cauldron
execute if score $temp.count alch.dummy matches 1.. run function alchemika:block/cauldron/interact/stir/iter_material1 with storage alchemika:storage temp.cauldron[0]
data remove entity @e[tag=alch.cauldron_interaction,limit=1,sort=nearest] interaction
execute if entity @s[tag=alch.matched] if data entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:"acid"}] run advancement grant @p[tag=alch.interacter] only alchemika:alchemika/acid acid
execute if entity @s[tag=alch.matched] if data entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:"dragon_acid"}] run advancement grant @p[tag=alch.interacter] only alchemika:alchemika/dragon_acid dragon_acid
tag @s remove alch.matched