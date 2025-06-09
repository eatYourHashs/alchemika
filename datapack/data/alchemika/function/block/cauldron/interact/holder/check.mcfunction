scoreboard players set $temp.count alch.dummy 0
scoreboard players set $temp.iter alch.dummy 0
data modify storage alchemika:storage temp.cauldron set value []
data modify storage alchemika:storage temp.cauldron_unclean set from entity @s item.components."minecraft:custom_data".alch_dat.cauldron
execute store result score $temp.iter alch.dummy run data get storage alchemika:storage temp.cauldron_unclean
execute if data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat{list:['null']} run data modify storage alchemika:storage temp.cauldron set from storage alchemika:storage temp.cauldron_unclean
execute unless data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat{list:['null']} if score $temp.count alch.dummy matches 1.. run function alchemika:block/cauldron/interact/holder/iter_verify with storage alchemika:storage temp.cauldron_unclean[0]
execute store result score $temp.count alch.dummy run data get storage alchemika:storage temp.cauldron
execute store result score $temp.item_capacity alch.dummy run data get storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.capacity
execute store result score $temp.item_total alch.dummy run data get storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.total
execute store result score $temp.item_amount alch.dummy run data get storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.total
execute store result score $temp.item_remaining alch.dummy run data get storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.remaining
execute if score $temp.item_total alch.dummy matches 0 if score $temp.count alch.dummy matches 1.. run function alchemika:block/cauldron/interact/holder/fill
execute store result score $temp.iter alch.dummy run data get storage alchemika:storage temp.cauldron
execute if score $temp.item_total alch.dummy matches 1.. if score $temp.count alch.dummy matches 1.. run function alchemika:block/cauldron/interact/holder/iter_select with storage alchemika:storage temp.cauldron[0]
execute store result score $temp.count alch.dummy run data get storage alchemika:storage temp.cauldron
execute unless entity @s[tag=alch.stop] if score $temp.item_total alch.dummy matches 1.. if score $temp.count alch.dummy matches 1.. if score $temp.item_remaining alch.dummy matches 1.. run function alchemika:block/cauldron/interact/holder/fill

execute unless entity @s[tag=alch.stop] if score $temp.item_total alch.dummy matches 1.. if score @s alch.rm_space matches 1.. run function alchemika:block/cauldron/interact/holder/empty with storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents[0]
data remove entity @e[tag=alch.cauldron_interaction,limit=1,sort=nearest] interaction
tag @s remove alch.stop