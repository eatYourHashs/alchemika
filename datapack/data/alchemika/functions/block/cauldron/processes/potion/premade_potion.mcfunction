scoreboard players add @s alch.potion 333
scoreboard players add @s alch.total 333
scoreboard players remove @s alch.rm_space 333
item replace entity @s weapon.mainhand with minecraft:structure_block{CustomModelData:426000,alch_dat:{potion:{}}}
data modify entity @s HandItems[0].tag.alch_dat.potion set from storage alchemika:storage item
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:water"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 1658879
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:mundane"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 1658879
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:thick"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 1658879
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:awkward"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 1658879
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:night_vision"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 2105508
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:long_night_vision"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 2105508
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:invisibility"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 8488341
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:long_invisibility"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 8488341
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:leaping"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 2358349
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:strong_leaping"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 2358349
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:long_leaping"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 2358349
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:fire_resistance"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 15244603
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:long_fire_resistance"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 15244603
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:swiftness"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 8303306
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:strong_swiftness"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 8303306
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:long_swiftness"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 8303306
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:slowness"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 6057603
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:strong_slowness"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 6057603
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:long_slowness"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 6057603
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:turtle_master"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 7822692
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:strong_turtle_master"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 7822692
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:long_turtle_master"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 7822692
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:water_breathing"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 3101852
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:long_water_breathing"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 3101852
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:healing"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 16524580
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:strong_healing"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 16524580
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:harming"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 4459017
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:strong_harming"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 4459017
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:poison"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 5215794
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:strong_poison"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 5215794
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:long_poison"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 5215794
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:regeneration"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 13721262
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:long_regeneration"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 13721262
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:strong_regeneration"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 13721262
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:strength"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 9839908
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:long_strength"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 9839908
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:strong_strength"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 9839908
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:weakness"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 4804169
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:long_weakness"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 4804169
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:strong_weakness"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 4804169
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:slow_falling"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 16577749
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:long_slow_falling"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 16577749
execute if data storage alchemika:storage item{tag:{Potion:"minecraft:luck"}} run data modify entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionColor set value 3447808
data modify storage alchemika:storage item set value {id:"minecraft:glass_bottle",Count:1b}
tag @s add alch.update