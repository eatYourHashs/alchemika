scoreboard players set $temp.amount alch.dummy 0
execute store result score $temp.existing alch.dummy run data get entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:"water"}].amount
execute store result score $temp.amount alch.dummy run data get entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:"water"}].amount
scoreboard players add $temp.amount alch.dummy 1
scoreboard players add @s alch.used_space 1
scoreboard players remove @s alch.rm_space 1
execute unless score $temp.existing alch.dummy matches 1.. run data modify storage alchemika:storage temp.material set value {id:"water"}
execute unless score $temp.existing alch.dummy matches 1.. store result storage alchemika:storage temp.material.amount int 1 run scoreboard players get $temp.amount alch.dummy
execute unless score $temp.existing alch.dummy matches 1.. run data modify entity @s item.components."minecraft:custom_data".alch_dat.cauldron append from storage alchemika:storage temp.material
execute if score $temp.existing alch.dummy matches 1.. store result entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:"water"}].amount int 1 run scoreboard players get $temp.amount alch.dummy
function alchemika:block/cauldron/update/update_visual