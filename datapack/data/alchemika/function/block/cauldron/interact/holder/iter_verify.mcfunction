$execute if data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat.list[{id:$(id)}] run data modify storage alchemika:storage temp.cauldron append from storage alchemika:storage temp.cauldron_unclean[0]
data remove storage alchemika:storage temp.cauldron_unclean[0]
scoreboard players remove $temp.iter alch.dummy 1
execute if score $temp.iter alch.dummy matches 1.. run function alchemika:block/cauldron/interact/holder/iter_verify with storage alchemika:storage temp.cauldron_unclean[0]