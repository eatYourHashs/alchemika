scoreboard players set $temp.count alch.dummy 0
data modify storage alchemika:storage temp.cauldron set from entity @s item.components."minecraft:custom_data".alch_dat.cauldron
execute store result score $temp.count alch.dummy run data get storage alchemika:storage temp.cauldron
scoreboard players set $temp.item_capacity alch.dummy $(components."minecraft:custom_data".alch_dat.)
execute if data storage alchemika:storage temp.item.components.alch_dat{total:0} if score $temp.count matches 1.. run function alchemika:block/cauldron/interact/holder/fill_from_empty with storage alchemika:storage temp.cauldron[0]
data remove entity @e[tag=alch.cauldron_interaction,limit=1,sort=nearest] interaction