scoreboard players set $temp.amount1 alch.dummy 0
$execute store result score $temp.amount1 alch.dummy run data get storage alchemika:storage temp.cauldron[{id:"$(in1_material_id)"}].amount
scoreboard players set $temp.amount2 alch.dummy 0
$execute store result score $temp.amount2 alch.dummy run data get storage alchemika:storage temp.cauldron[{id:"$(in2_material_id)"}].amount
scoreboard players set $temp.amount3 alch.dummy 0
$execute store result score $temp.amount3 alch.dummy run data get storage alchemika:storage temp.cauldron[{id:"$(in3_material_id)"}].amount
$scoreboard players set $temp.change alch.dummy $(out1_material_amount)
$scoreboard players add $temp.change alch.dummy $(out2_material_amount)
$scoreboard players remove $temp.change alch.dummy $(in1_material_amount)
$scoreboard players remove $temp.change alch.dummy $(in2_material_amount)
$scoreboard players remove $temp.change alch.dummy $(in3_material_amount)
$execute if score $temp.amount1 alch.dummy matches $(in1_material_amount).. if score $temp.amount2 alch.dummy matches $(in2_material_amount).. if score $temp.amount3 alch.dummy matches $(in3_material_amount).. if score $temp.change alch.dummy <= @s alch.rm_space run function alchemika:block/cauldron/interact/stir/craft with storage alchemika:storage temp.matched_recipes[0]

data remove storage alchemika:storage temp.matched_recipes[0]
scoreboard players remove $temp.recipe_count alch.dummy 1
execute if score $temp.recipe_count alch.dummy matches 1.. run function alchemika:block/cauldron/interact/stir/iter_recipe with storage alchemika:storage temp.matched_recipes[0]
