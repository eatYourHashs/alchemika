execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=item,tag=!smithed.strict,dx=1,dy=0.6,dz=1] run function alchemika:block/cauldron/processes/item_in
execute if block ~ ~-1 ~ #alchemika:heat_source run function alchemika:block/cauldron/processes/heat_processing
execute unless block ~ ~-1 ~ #alchemika:cold_source if score @s alch.lava matches 1.. run function alchemika:block/cauldron/processes/heat_processing
execute unless block ~ ~-1 ~ #alchemika:heat_source if score @s alch.snow matches 1.. run function alchemika:block/cauldron/processes/cold_processing
execute if block ~ ~-1 ~ #alchemika:cold_source run function alchemika:block/cauldron/processes/cold_processing
execute if block ~ ~1 ~ water unless score @s alch.total matches 1000.. run function alchemika:block/cauldron/processes/fill_with_water
execute if block ~ ~1 ~ lava[level=0] unless score @s alch.total matches 1000.. run function alchemika:block/cauldron/processes/fill_with_lava
execute if block ~ ~1 ~ powder_snow unless score @s alch.total matches 1000.. run function alchemika:block/cauldron/processes/fill_with_snow
execute if entity @s[tag=alch.update] run function alchemika:block/cauldron/update_visual
tag @s remove alch.update