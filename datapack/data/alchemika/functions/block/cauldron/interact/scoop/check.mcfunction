scoreboard players set $temp.count alch.dummy 0
data modify storage alchemika:storage temp.cauldron set from entity @s item.tag.alch_dat.cauldron
execute store result score $temp.count alch.dummy run data get storage alchemika:storage temp.cauldron
execute if score $temp.count alch.dummy matches 1.. run function alchemika:block/cauldron/interact/scoop/iterate with storage alchemika:storage temp.cauldron[0]
data remove entity @s interaction
tag @s remove alch.matched