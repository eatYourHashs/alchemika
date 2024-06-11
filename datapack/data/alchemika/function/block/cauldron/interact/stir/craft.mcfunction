$scoreboard players set $temp.out1_amount alch.dummy $(out1_material_amount)
$scoreboard players set $temp.out2_amount alch.dummy $(out2_material_amount)
playsound minecraft:item.bottle.fill player @a
scoreboard players operation @s alch.rm_space -= $temp.change alch.dummy
scoreboard players operation @s alch.used_space += $temp.change alch.dummy
scoreboard players set $temp.existing1 alch.dummy 0
scoreboard players set $temp.existing2 alch.dummy 0
$execute store result score $temp.existing1 alch.dummy run data get entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:$(out1_material_id)}].amount
$execute store result score $temp.existing2 alch.dummy run data get entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:$(out2_material_id)}].amount
scoreboard players operation $temp.out1_amount alch.dummy += $temp.existing1 alch.dummy
scoreboard players operation $temp.out2_amount alch.dummy += $temp.existing2 alch.dummy
$scoreboard players remove $temp.amount1 alch.dummy $(in1_material_amount)
$scoreboard players remove $temp.amount2 alch.dummy $(in2_material_amount)
$scoreboard players remove $temp.amount3 alch.dummy $(in3_material_amount)
$execute store result entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:$(in1_material_id)}].amount int 1 run scoreboard players get $temp.amount1 alch.dummy
$execute if score $temp.amount1 alch.dummy matches ..0 run data remove entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:$(in1_material_id)}]
$execute store result entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:$(in2_material_id)}].amount int 1 run scoreboard players get $temp.amount2 alch.dummy
$execute if score $temp.amount2 alch.dummy matches ..0 run data remove entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:$(in2_material_id)}]
$execute store result entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:$(in3_material_id)}].amount int 1 run scoreboard players get $temp.amount3 alch.dummy
$execute if score $temp.amount3 alch.dummy matches ..0 run data remove entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:$(in3_material_id)}]
execute unless score $temp.existing1 alch.dummy matches 1.. run data modify storage alchemika:storage temp.material set value {}
execute unless score $temp.existing1 alch.dummy matches 1.. run data modify storage alchemika:storage temp.material.id set from storage alchemika:storage temp.matched_recipes[0].out1_material_id
execute unless score $temp.existing1 alch.dummy matches 1.. run data modify storage alchemika:storage temp.material.amount set from storage alchemika:storage temp.matched_recipes[0].out1_material_amount
execute unless score $temp.existing1 alch.dummy matches 1.. unless data storage alchemika:storage temp.material{id:"none"} run data modify entity @s item.components."minecraft:custom_data".alch_dat.cauldron append from storage alchemika:storage temp.material
$execute if score $temp.existing1 alch.dummy matches 1.. store result entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:$(out1_material_id)}].amount int 1 run scoreboard players get $temp.out1_amount alch.dummy
execute unless score $temp.existing2 alch.dummy matches 1.. run data modify storage alchemika:storage temp.material set value {}
execute unless score $temp.existing2 alch.dummy matches 1.. run data modify storage alchemika:storage temp.material.id set from storage alchemika:storage temp.matched_recipes[0].out2_material_id
execute unless score $temp.existing2 alch.dummy matches 1.. run data modify storage alchemika:storage temp.material.amount set from storage alchemika:storage temp.matched_recipes[0].out2_material_amount
execute unless score $temp.existing2 alch.dummy matches 1.. unless data storage alchemika:storage temp.material{id:"none"} run data modify entity @s item.components."minecraft:custom_data".alch_dat.cauldron append from storage alchemika:storage temp.material
$execute if score $temp.existing2 alch.dummy matches 1.. store result entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:$(out2_material_id)}].amount int 1 run scoreboard players get $temp.out2_amount alch.dummy
function alchemika:block/cauldron/update/update_visual
tag @s add alch.matched
scoreboard players set @s alch.interact_timer 0