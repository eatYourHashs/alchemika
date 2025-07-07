data remove storage alchemika:storage temp.item
data modify storage alchemika:storage temp.item set from entity @s SelectedItem
scoreboard players set $temp.amount alch.dummy 0
execute store result score $temp.amount alch.dummy run data get storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents[0].amount
scoreboard players set $temp.remaining alch.dummy 0
execute store result score $temp.amount alch.dummy run data get storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.remaining
execute if data alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.tempered_syringe if data alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents[{id:"distilled_experience"}] if score @s alch.xp matches 10.. if score $temp.remaining alch.dummy matches 10..
execute if data alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents[{id:"blood"}] if score $temp.remaining alch.dummy matches 10..
execute unless data alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents[0] if data alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.tempered_syringe if score @s alch.xp matches 10..
