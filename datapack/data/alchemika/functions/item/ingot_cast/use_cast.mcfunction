scoreboard players add $cast.temp alch.dummy 1
execute if block ~ ~ ~ cauldron align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=armor_stand,distance=..0.6,tag=alch.cauldron] run function alchemika:item/ingot_cast/cast
execute unless score $cast.temp alch.dummy matches 14.. positioned ^ ^ ^0.25 run function alchemika:item/ingot_cast/use_cast
