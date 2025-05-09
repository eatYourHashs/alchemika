data modify entity @s item.id set value "minecraft:leather_horse_armor"
data modify entity @s item.components."minecraft:dyed_color" set value 16777215
data modify entity @s item.components."minecraft:item_model" set value "alchemika:block_model/empty"
scoreboard players set $temp.count alch.dummy 0
execute store result score $temp.count alch.dummy run data get entity @s item.components."minecraft:custom_data".alch_dat.cauldron
data modify storage alchemika:storage temp.cauldron set from entity @s item.components."minecraft:custom_data".alch_dat.cauldron
scoreboard players set $temp.red alch.dummy 0
scoreboard players set $temp.green alch.dummy 0
scoreboard players set $temp.blue alch.dummy 0
execute if score $temp.count alch.dummy matches 1.. run function alchemika:block/cauldron/update/iterate_material with storage alchemika:storage temp.cauldron[0]

scoreboard players operation $temp.red alch.dummy /= @s alch.used_space
scoreboard players operation $temp.blue alch.dummy /= @s alch.used_space
scoreboard players operation $temp.green alch.dummy /= @s alch.used_space
scoreboard players operation $temp.red alch.dummy *= $cons.65536 alch.dummy
scoreboard players operation $temp.green alch.dummy *= $cons.256 alch.dummy
scoreboard players operation $temp alch.dummy = $temp.red alch.dummy
scoreboard players operation $temp alch.dummy += $temp.green alch.dummy
scoreboard players operation $temp alch.dummy += $temp.blue alch.dummy
execute store result entity @s item.components."minecraft:dyed_color" int 1 run scoreboard players get $temp alch.dummy

scoreboard players operation $temp alch.dummy = @s alch.rm_space
scoreboard players operation $temp alch.dummy *= $cons.1000 alch.dummy
scoreboard players operation $temp alch.dummy /= @s alch.capacity
execute store result entity @s transformation.translation[1] float -0.0006 run scoreboard players get $temp alch.dummy


execute if entity @s[tag=alch.normal,tag=!alch.hot,tag=!alch.powder,tag=!alch.pure] run data modify entity @s item.components."minecraft:item_model" set value "alchemika:block_model/fluid"
execute if entity @s[tag=alch.hot,tag=!alch.powder,tag=!alch.pure] run data modify entity @s item.components."minecraft:item_model" set value "alchemika:block_model/molten"
execute if entity @s[tag=alch.powder,tag=!alch.pure] run data modify entity @s item.components."minecraft:item_model" set value "alchemika:block_model/powder"
execute if entity @s[tag=alch.pure] run data modify entity @s item.id set value "minecraft:structure_block"
tag @s remove alch.normal
tag @s remove alch.hot
tag @s remove alch.powder
tag @s remove alch.pure