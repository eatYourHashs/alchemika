data remove storage alchemika:storage temp.item
data modify storage alchemika:storage temp.item set from entity @s SelectedItem
scoreboard players set $temp.amount alch.dummy 0
execute store result score $temp.amount alch.dummy run data get storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents[0].amount
scoreboard players set $temp.capacity alch.dummy 0
execute store result score $temp.capacity alch.dummy run data get storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.capacity
scoreboard players operation $temp.remaining alch.dummy = $temp.capacity alch.dummy
scoreboard players operation $temp.remaining alch.dummy -= $temp.amount alch.dummy
execute store result score $temp.xp alch.dummy run xp query @s points
execute store result score $temp.lvl alch.dummy run xp query @s levels
execute if score $temp.lvl alch.dummy matches 3.. run tag @s add alch.has_20
execute if score $temp.lvl alch.dummy matches 2 if score $temp.xp alch.dummy matches 4.. run tag @s add alch.has_20
execute if data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.tempered_syringe if data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents[{id:"distilled_experience"}] if entity @s[tag=alch.has_20] if score $temp.remaining alch.dummy matches 20.. run function alchemika:item/syringe/fill_xp
execute if data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents[{id:"blood"}] if score $temp.remaining alch.dummy matches 10.. run function alchemika:item/syringe/fill_blood
execute unless data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents[0] if data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.tempered_syringe if entity @s[tag=alch.has_20] run function alchemika:item/syringe/fill_xp
execute unless data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents[0] run function alchemika:item/syringe/fill_blood
tag @s remove alch.has_20
