execute as @e[type=item,tag=!smithed.strict,dx=1,dy=0.6,dz=1,limit=1,sort=nearest] run data modify storage alchemika:storage item set from entity @s Item
execute if data storage alchemika:storage item{id:"minecraft:bucket"} run function alchemika:block/cauldron/craft/fill_bucket
execute if score @s alch.potion matches 1.. run function alchemika:block/cauldron/processes/potion_item_in
execute if data storage alchemika:storage item{id:"minecraft:glass_bottle"} run function alchemika:block/cauldron/craft/fill_bottle
execute if data storage alchemika:storage item{id:"minecraft:gunpowder"} if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/gunpowder
execute if data storage alchemika:storage item{id:"minecraft:glowstone_dust"} if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/glowstone
execute if data storage alchemika:storage item{id:"minecraft:redstone"} if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/redstone
execute if data storage alchemika:storage item{tag:{alch_dat:{sulfur:1b}}} if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/sulfur
execute if data storage alchemika:storage item{id:"minecraft:charcoal"} if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/charcoal
execute if data storage alchemika:storage item{id:"minecraft:raw_iron"} if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/raw_iron
execute if data storage alchemika:storage item{id:"minecraft:raw_gold"} if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/raw_gold
execute if data storage alchemika:storage item{id:"minecraft:raw_copper"} if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/raw_copper
execute if data storage alchemika:storage item{id:"minecraft:clay_ball"} if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/clay
execute if data storage alchemika:storage item{id:"minecraft:iron_ingot"} if score @s alch.clay matches 333.. run function alchemika:block/cauldron/craft/ingot_cast
execute if data storage alchemika:storage item{id:"minecraft:gold_ingot"} if score @s alch.clay matches 333.. run function alchemika:block/cauldron/craft/ingot_cast
execute if data storage alchemika:storage item{id:"minecraft:copper_ingot"} if score @s alch.clay matches 333.. run function alchemika:block/cauldron/craft/ingot_cast
execute if data storage alchemika:storage item{id:"minecraft:nether_wart"} if score @s alch.water matches 1.. run function alchemika:block/cauldron/processes/potion/awkward_potion
execute if entity @s[tag=alch.update] run data modify entity @e[type=item,tag=!smithed.strict,dx=1,dy=0.6,dz=1,limit=1,sort=nearest] Item set from storage alchemika:storage item
execute if entity @s[tag=alch.update] run data modify entity @e[type=item,tag=!smithed.strict,dx=1,dy=0.6,dz=1,limit=1,sort=nearest] Motion[1] set value 0.5