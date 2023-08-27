scoreboard players set $temp.recipe_count alch.dummy 0
data modify storage alchemika:storage temp.matched_recipes set value []
$execute store result score $temp.recipe_count alch.dummy run data modify storage alchemika:storage temp.matched_recipes append from storage alchemika:registry recipes.stir[{in1_material_id:"$(id)"}]
$execute unless score $temp.amount alch.recipe_count matches 0 run function alchemika:block/cauldron/interact/stir/craft with storage alchemika:storage temp.matched_recipes[0]

data remove storage alchemika:storage temp.matched_recipes[0]
scoreboard players remove $temp.recipe_count alch.dummy 1
execute if score $temp.recipe_count alch.dummy matches 1.. run function alchemika:block/cauldron/interact/stir/iter_recipe with storage alchemika:storage temp.matched_recipes[0]