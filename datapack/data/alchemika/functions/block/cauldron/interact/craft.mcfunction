$scoreboard players set $temp.amount alch.dummy $(material_amount)
item modify entity @a[tag=alch.interacter] weapon.mainhand alchemika:subtract_1
playsound minecraft:item.bottle.fill player @a
scoreboard players operation @s alch.rm_space -= $temp.amount alch.dummy
scoreboard players operation @s alch.used_space += $temp.amount alch.dummy
scoreboard players set $temp.existing alch.dummy 0
$execute store result score $temp.existing alch.dummy run data get entity @s item.tag.alch_dat.cauldron[{id:$(material_id)}].amount
scoreboard players operation $temp.amount alch.dummy += $temp.existing alch.dummy
execute unless score $temp.existing alch.dummy matches 1.. run data modify storage alchemika:storage temp.material set value {}
execute unless score $temp.existing alch.dummy matches 1.. run data modify storage alchemika:storage temp.material.id set from storage alchemika:storage temp.matched_recipes[0].material_id
execute unless score $temp.existing alch.dummy matches 1.. run data modify storage alchemika:storage temp.material.amount set from storage alchemika:storage temp.matched_recipes[0].material_amount
execute unless score $temp.existing alch.dummy matches 1.. run data modify entity @s item.tag.alch_dat.cauldron append from storage alchemika:storage temp.material
$execute if score $temp.existing alch.dummy matches 1.. store result entity @s item.tag.alch_dat.cauldron[{id:$(material_id)}].amount int 1 run scoreboard players get $temp.amount alch.dummy
function alchemika:block/cauldron/update/update_visual
tag @s add alch.matched