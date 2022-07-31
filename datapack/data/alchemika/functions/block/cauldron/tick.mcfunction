execute unless block ~ ~ ~ #minecraft:cauldrons run function alchemika:block/cauldron/break
execute if block ~ ~ ~ minecraft:water_cauldron run function alchemika:block/cauldron/vanilla/water_fill
execute if block ~ ~ ~ minecraft:lava_cauldron run function alchemika:block/cauldron/vanilla/lava_fill
execute if block ~ ~ ~ minecraft:powder_snow_cauldron run function alchemika:block/cauldron/vanilla/snow_fill
execute if score @s alch.stir_timer matches 1.. run function alchemika:block/cauldron/processes/stir/tick