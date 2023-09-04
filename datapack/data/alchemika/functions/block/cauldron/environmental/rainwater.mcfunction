scoreboard players set $temp.amount alch.dummy 0
execute store result score $temp.existing alch.dummy run data get entity @s item.tag.alch_dat.cauldron[{id:"water"}].amount
execute store result score $temp.amount alch.dummy run data get entity @s item.tag.alch_dat.cauldron[{id:"water"}].amount
execute if score @s alch.rm_space matches ..7 run scoreboard players operation $temp.amount alch.dummy += @s alch.rm_space
execute if score @s alch.rm_space matches ..7 run scoreboard players operation @s alch.used_space += @s alch.rm_space
execute if score @s alch.rm_space matches ..7 run scoreboard players set @s alch.rm_space 0
execute if score @s alch.rm_space matches 8.. run scoreboard players add $temp.amount alch.dummy 8
execute if score @s alch.rm_space matches 8.. run scoreboard players add @s alch.used_space 8
execute if score @s alch.rm_space matches 8.. run scoreboard players remove @s alch.rm_space 8
execute unless score $temp.existing alch.dummy matches 1.. run data modify storage alchemika:storage temp.material set value {id:"water"}
execute unless score $temp.existing alch.dummy matches 1.. store result storage alchemika:storage temp.material.amount int 1 run scoreboard players get $temp.amount alch.dummy
execute unless score $temp.existing alch.dummy matches 1.. run data modify entity @s item.tag.alch_dat.cauldron append from storage alchemika:storage temp.material
execute if score $temp.existing alch.dummy matches 1.. store result entity @s item.tag.alch_dat.cauldron[{id:"water"}].amount int 1 run scoreboard players get $temp.amount alch.dummy
function alchemika:block/cauldron/update/update_visual