execute if score @s alch.snow matches 1.. run function alchemika:block/cauldron/processes/melt_snow
execute if score @s alch.water matches 1.. if block ~ ~1 ~ #alchemika:not_solid unless block ~ ~1 ~ #minecraft:trapdoors[open=false] run function alchemika:block/cauldron/processes/evaporate_water