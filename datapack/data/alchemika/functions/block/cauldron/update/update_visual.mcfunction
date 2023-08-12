scoreboard players set $temp.count alch.dummy 0
execute store result score $temp.count alch.dummy run data get entity @s item.tag.alch_dat.cauldron
data modify storage alchemika:storage temp.cauldron set from entity @s item.tag.alch_dat.cauldron
execute if score $temp.count alch.dummy matches 1.. run function alchemika:block/cauldron/update/iterate_material with storage alchemika:storage temp.cauldron[0]