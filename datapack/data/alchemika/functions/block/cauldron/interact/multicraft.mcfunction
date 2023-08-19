$scoreboard players set $temp.out_amount alch.dummy $(out_material_amount)
item modify entity @a[tag=alch.interacter] weapon.mainhand alchemika:subtract_1
playsound minecraft:item.bottle.fill player @a
scoreboard players operation @s alch.rm_space -= $temp.change alch.dummy
scoreboard players operation @s alch.used_space += $temp.change alch.dummy
scoreboard players set $temp.existing alch.dummy 0
$execute store result score $temp.existing alch.dummy run data get entity @s item.tag.alch_dat.cauldron[{id:$(out_material_id)}].amount
scoreboard players operation $temp.out_amount alch.dummy += $temp.existing alch.dummy
$scoreboard players remove $temp.amount alch.dummy $(in_material_amount)
$execute store result entity @s item.tag.alch_dat.cauldron[{id:$(in_material_id)}].amount int 1 run scoreboard players get $temp.amount alch.dummy
$execute if score $temp.amount alch.dummy matches ..0 run data remove entity @s item.tag.alch_dat.cauldron[{id:$(in_material_id)}]
execute unless score $temp.existing alch.dummy matches 1.. run data modify storage alchemika:storage temp.material set value {}
execute unless score $temp.existing alch.dummy matches 1.. run data modify storage alchemika:storage temp.material.id set from storage alchemika:storage temp.matched_recipes[0].material_id
execute unless score $temp.existing alch.dummy matches 1.. run data modify storage alchemika:storage temp.material.amount set from storage alchemika:storage temp.matched_recipes[0].material_amount
execute unless score $temp.existing alch.dummy matches 1.. unless data storage alchemika:storage temp.material{id:"none"} run data modify entity @s item.tag.alch_dat.cauldron append from storage alchemika:storage temp.material
$execute if score $temp.existing alch.dummy matches 1.. store result entity @s item.tag.alch_dat.cauldron[{id:$(out_material_id)}].amount int 1 run scoreboard players get $temp.out_amount alch.dummy
function alchemika:block/cauldron/update/update_visual
tag @s add alch.matched