$scoreboard players set $temp.change alch.dummy $(out_material_amount)
$scoreboard players remove $temp.change alch.dummy $(in_material_amount)
scoreboard players set $temp.amount alch.dummy 0
$execute store result score $temp.amount alch.dummy run data get entity @s item.tag.alch_dat.cauldron[{id:"$(in_material_id)"}].amount
$execute if score @s alch.rm_space >= $temp.change alch.dummy if score $temp.amount alch.dummy matches $(in_material_amount).. run function alchemika:block/cauldron/interact/multicraft with storage alchemika:storage temp.matched_recipes[0]

data remove storage alchemika:storage temp.matched_recipes[0]
scoreboard players remove $temp.matches alch.dummy 1
execute unless entity @s[tag=alch.matched] if score $temp.matches alch.dummy matches 1.. run function alchemika:block/cauldron/interact/iterate_matched with storage alchemika:storage temp.matched_recipes[0]