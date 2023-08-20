scoreboard players set $temp.count alch.dummy 0
data modify storage alchemika:storage temp.matched_recipes set value []
$data modify storage alchemika:storage temp.matched_recipes append from storage alchemika:registry recipes.item_in[{id:"$(id)",tag:$(tag)}]
execute if data storage alchemika:storage temp.matched_recipes[0] run function alchemika:block/cauldron/interact/match_one with storage alchemika:storage temp.matched_recipes[0]
execute unless entity @s[tag=alch.matched] run data modify storage alchemika:storage temp.matched_recipes set value []
$execute unless entity @s[tag=alch.matched] run data modify storage alchemika:storage temp.matched_recipes append from storage alchemika:registry recipes.item_in_with_material[{id:"$(id)",tag:$(tag)}]
execute unless entity @s[tag=alch.matched] store result score $temp.matches alch.dummy run data get storage alchemika:storage temp.matched_recipes
execute unless entity @s[tag=alch.matched] if score $temp.matches alch.dummy matches 1.. run function alchemika:block/cauldron/interact/iterate_matched with storage alchemika:storage temp.matched_recipes[0]
data remove entity @s interaction
tag @s remove alch.matched