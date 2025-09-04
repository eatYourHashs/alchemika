$execute store result score $temp.red alch.dummy run data get storage alchemika:registry materials[{id:$(id)}].red
$execute store result score $temp.blue alch.dummy run data get storage alchemika:registry materials[{id:$(id)}].blue
$execute store result score $temp.green alch.dummy run data get storage alchemika:registry materials[{id:$(id)}].green
scoreboard players operation $temp.red alch.dummy *= $cons.65536 alch.dummy
scoreboard players operation $temp.green alch.dummy *= $cons.256 alch.dummy
scoreboard players operation $temp.color alch.dummy = $temp.red alch.dummy
scoreboard players operation $temp.color alch.dummy += $temp.green alch.dummy
scoreboard players operation $temp.color alch.dummy += $temp.blue alch.dummy

$data modify storage alchemika:storage temp.type set from storage alchemika:registry materials[{id:$(id)}].tag

scoreboard players operation $temp.item_total alch.dummy = $temp.amount alch.dummy
$data modify storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents set value [{id:$(id),amount:0}]
execute store result storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents[0].amount int 1 run scoreboard players get $temp.amount alch.dummy
execute store result storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.total int 1 run scoreboard players get $temp.item_total alch.dummy
execute store result storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.remaining int 1 run scoreboard players get $temp.remaining alch.dummy
$execute if score $temp.amount alch.dummy matches ..0 run data remove storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents[{id:$(id)}]
data modify storage alchemika:storage temp.modified_item set from storage alchemika:storage temp.item
execute if data storage alchemika:storage temp{type:"normal"} run item modify entity @s weapon.mainhand alchemika:fill_chemical_thrower_normal
execute if data storage alchemika:storage temp{type:"hot"} run item modify entity @s weapon.mainhand alchemika:fill_chemical_thrower_hot
execute if data storage alchemika:storage temp{type:"powder"} run item modify entity @s weapon.mainhand alchemika:fill_chemical_thrower_powder