tag @s add alch.shooter
data remove storage alchemika:storage temp.item
data modify storage alchemika:storage temp.item set from entity @s SelectedItem
scoreboard players set $temp.amount alch.dummy 0
execute store result score $temp.amount alch.dummy run data get storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents[0].amount
scoreboard players set $temp.capacity alch.dummy 0
execute store result score $temp.capacity alch.dummy run data get storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.capacity
scoreboard players operation $temp.remaining alch.dummy = $temp.capacity alch.dummy
scoreboard players operation $temp.remaining alch.dummy -= $temp.amount alch.dummy
execute if score $temp.amount alch.dummy matches 1.. run function alchemika:item/chemical_thrower/shoot with storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents[0]
tag @s remove alch.shooter