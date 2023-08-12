item replace entity @s armor.head with minecraft:leather_horse_armor{display:{color:16777215},CustomModelData:426003}
scoreboard players set $temp.count alch.dummy 0
execute store result score $temp.count alch.dummy run data get entity @s item.tag.alch_dat.cauldron
data modify storage alchemika:storage temp.cauldron set from entity @s item.tag.alch_dat.cauldron
execute if score $temp.count alch.dummy matches 1.. run function alchemika:block/cauldron/update/iterate_material with storage alchemika:storage temp.cauldron[0]
execute if entity @s[tag=alch.hot,tag=!alch.powder,tag=!alch.pure] run data modify entity @s item.tag.CustomModelData set value 426001
execute if entity @s[alch.powder,tag=!alch.pure] run data modify entity @s item.tag.CustomModelData set value 426002
execute if entity @s[alch.pure] run data modify entity @s item.id set value "minecraft:structure_block"
tag @s remove alch.normal
tag @s remove alch.hot
tag @s remove alch.powder
tag @s remove alch.pure