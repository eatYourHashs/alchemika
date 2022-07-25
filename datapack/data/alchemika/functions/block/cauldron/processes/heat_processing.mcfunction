execute if score @s alch.snow matches 1.. run function alchemika:block/cauldron/processes/melt_snow
execute if score @s alch.water matches 1.. if block ~ ~1 ~ #alchemika:not_solid run function alchemika:block/cauldron/processes/evaporate_water
execute if score @s alch.water matches 1.. if block ~ ~1 ~ #minecraft:trapdoors[open=true] run function alchemika:block/cauldron/processes/evaporate_water
execute if score @s alch.gunpowder matches 1..110 run function alchemika:block/cauldron/processes/burn_gunpowder
execute if score @s alch.gunpowder matches 111.. run function alchemika:block/cauldron/processes/explode_gunpowder