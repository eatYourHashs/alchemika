# amount calculations
execute unless data storage alchemika:storage temp.cauldron[0] run data modify storage alchemika:storage temp.cauldron append {id:$(id),amount:0}
execute store result score $temp.cauldron_amount alch.dummy run data get storage alchemika:storage temp.cauldron[0].amount

scoreboard players operation $temp.moved_amount alch.dummy = $temp.item_amount alch.dummy
execute if score $temp.moved_amount alch.dummy > @s alch.rm_space run scoreboard players operation $temp.moved_amount alch.dummy = @s alch.rm_space

scoreboard players operation $temp.item_amount alch.dummy -= $temp.moved_amount alch.dummy
scoreboard players operation $temp.cauldron_amount alch.dummy -= $temp.moved_amount alch.dummy
scoreboard players operation $temp.item_total = $temp.item_amount
scoreboard players operation $temp.item_remaining alch.dummy = $temp.item_capacity alch.dummy
scoreboard players operation $temp.item_remaining alch.dummy -= $temp.item_amount alch.dummy

execute store result storage alchemika:storage temp.modified_item.components."minecraft:custom_data".alch_dat.total int 1 run scoreboard players get $temp.item_total alch.dummy
execute store result storage alchemika:storage temp.modified_item.components."minecraft:custom_data".alch_dat.remaining int 1 run scoreboard players get $temp.item_remaining alch.dummy
scoreboard players operation @s alch.used_space += $temp.moved_amount alch.dummy
scoreboard players operation @s alch.rm_space -= $temp.moved_amount alch.dummy

# moved the rest of the operation here for reuse
function alchemika:block/cauldron/interact/holder/item_op with storage alchemika:storage temp.cauldron[0]
tag @s add alch.stop