playsound minecraft:item.bottle.fill player @a
scoreboard players operation @s alch.rm_space += $temp.amount alch.dummy
scoreboard players operation @s alch.used_space -= $temp.amount alch.dummy
$execute store result score $temp.amount alch.dummy run data get entity @s item.tag.alch_dat.cauldron[{id:$(material_id)}].amount
$scoreboard players remove $temp.amount alch.dummy $(material_amount)
$execute store result entity @s item.tag.alch_dat.cauldron[{id:$(material_id)}].amount int 1 run scoreboard players get $temp.amount alch.dummy
$execute if score $temp.amount alch.dummy matches ..0 run data remove entity @s item.tag.alch_dat.cauldron[{id:$(material_id)}]
$execute at @a[tag=alch.interacter] run loot spawn ~ ~ ~ loot $(loot)
function alchemika:block/cauldron/update/update_visual
tag @s add alch.matched