execute as @e[type=item,tag=!smithed.strict,dx=1,dy=0.6,dz=1,limit=1,sort=nearest] run data modify storage alchemika:storage item set from entity @s Item
execute if data storage alchemika:storage item{id:"minecraft:bucket"} run function alchemika:block/cauldron/craft/fill_bucket
execute if data storage alchemika:storage item{id:"minecraft:glass_bottle"} run function alchemika:block/cauldron/craft/fill_bottle
execute if data storage alchemika:storage item{id:"minecraft:gunpowder"} run function alchemika:block/cauldron/craft/pure_add/gunpowder
execute if entity @s[tag=alch.update] run data modify entity @e[type=item,tag=!smithed.strict,dx=1,dy=0.6,dz=1,limit=1,sort=nearest] Item set from storage alchemika:storage item
execute if entity @s[tag=alch.update] run data modify entity @e[type=item,tag=!smithed.strict,dx=1,dy=0.6,dz=1,limit=1,sort=nearest] Motion[1] set value 0.5