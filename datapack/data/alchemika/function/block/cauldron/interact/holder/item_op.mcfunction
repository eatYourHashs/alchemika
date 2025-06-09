# color handling
$execute store result score $temp.red alch.dummy run data get storage alchemika:registry materials[{id:$(id)}].red
$execute store result score $temp.blue alch.dummy run data get storage alchemika:registry materials[{id:$(id)}].blue
$execute store result score $temp.green alch.dummy run data get storage alchemika:registry materials[{id:$(id)}].green
scoreboard players operation $temp.red alch.dummy *= $cons.65536 alch.dummy
scoreboard players operation $temp.green alch.dummy *= $cons.256 alch.dummy
scoreboard players operation $temp.color alch.dummy = $temp.red alch.dummy
scoreboard players operation $temp.color alch.dummy += $temp.green alch.dummy
scoreboard players operation $temp.color alch.dummy += $temp.blue alch.dummy

# data handling
data modify storage alchemika:storage temp.modified_item.components."minecraft:custom_data".alch_dat.contents set value [{id:"",amount:0}]
execute store result storage alchemika:storage temp.modified_item.components."minecraft:custom_data".alch_dat.contents[0].amount int 1 run scoreboard players get $temp.item_amount alch.dummy
$data modify storage alchemika:storage temp.modified_item.components."minecraft:custom_data".alch_dat.contents[0].id set value $(id)
execute if score $temp.item_amount matches 0 run data remove storage alchemika:storage temp.modified_item.components."minecraft:custom_data".alch_dat.contents[0]

# put all this back on the item and cauldron
$execute unless data entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:$(id)}] run data modify entity @s item.components."minecraft:custom_data".alch_dat.cauldron append {id:$(id),amount:0}
$execute store result entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:$(id)}].amount int 1 run scoreboard players get $temp.cauldron_amount alch.dummy
$execute if score $temp.cauldron_amount alch.dummy matches ..0 run data remove entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:$(id)}]
# modifier for each individual holder type oof
execute if data storage alchemika:storage temp.modified_item.components."minecraft:custom_data".alch_dat.phial run item modify entity @p[tag=alch.interacter] weapon.mainhand alchemika:fill_phial
function #alchemika:addon_holders