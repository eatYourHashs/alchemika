execute as @e[type=item,tag=!smithed.strict,dx=1,dy=0.6,dz=1,limit=1,sort=nearest] run data modify storage alchemika:storage item set from entity @s Item
execute if data storage alchemika:storage item{id:"minecraft:bucket"} run function alchemika:block/cauldron/craft/fill_bucket
execute if data storage alchemika:storage item{id:"minecraft:glass_bottle"} run function alchemika:block/cauldron/craft/fill_bottle
execute if data storage alchemika:storage item{id:"minecraft:gunpowder"} if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/gunpowder
execute if data storage alchemika:storage item{tag:{alch_dat:{sulfur:1b}}} if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/sulfur
execute if data storage alchemika:storage item{id:"minecraft:charcoal"} if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/charcoal
execute if data storage alchemika:storage item{id:"minecraft:raw_iron"} if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/raw_iron
execute if data storage alchemika:storage item{id:"minecraft:raw_gold"} if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/raw_gold
execute if data storage alchemika:storage item{id:"minecraft:raw_copper"} if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/raw_copper
execute if entity @s[tag=alch.update] run data modify entity @e[type=item,tag=!smithed.strict,dx=1,dy=0.6,dz=1,limit=1,sort=nearest] Item set from storage alchemika:storage item
execute if entity @s[tag=alch.update] run data modify entity @e[type=item,tag=!smithed.strict,dx=1,dy=0.6,dz=1,limit=1,sort=nearest] Motion[1] set value 0.5