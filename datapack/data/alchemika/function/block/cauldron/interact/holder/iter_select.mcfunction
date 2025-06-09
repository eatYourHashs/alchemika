$execute unless data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents[{id:'$(id)'}] run data remove storage alchemika:storage temp.cauldron[0]
$execute if data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.contents[{id:'$(id)'}] run scoreboard players set $temp.iter alch.dummy 1
scoreboard players remove $temp.iter alch.dummy 1
execute if score $temp.iter alch.dummy matches 1.. run function alchemika:block/cauldron/interact/holder/iter_select with storage alchemika:storage temp.cauldron[0]