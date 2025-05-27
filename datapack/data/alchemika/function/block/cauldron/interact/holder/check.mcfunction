scoreboard players set $temp.count alch.dummy 0
data modify storage alchemika:storage temp.cauldron set from entity @s item.components."minecraft:custom_data".alch_dat.cauldron
execute store result score $temp.count alch.dummy run data get storage alchemika:storage temp.cauldron
execute store result score $temp.item_capacity alch.dummy run data get storage alchemika:storage temp.item.components.alch_dat.capacity
execute store result score $temp.item_total alch.dummy run data get storage alchemika:storage temp.item.components.alch_dat.total
execute store result score $temp.item_remaining alch.dummy run data get storage alchemika:storage temp.item.components.alch_dat.remaining
execute if score $temp.total alch.dummy matches 0 if score $temp.count matches 1.. run function alchemika:block/cauldron/interact/holder/fill_from_empty with storage alchemika:storage temp.cauldron[0]
data remove entity @e[tag=alch.cauldron_interaction,limit=1,sort=nearest] interaction