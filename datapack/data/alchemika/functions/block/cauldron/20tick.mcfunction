execute if block ~ ~-1 ~ #alchemika:heat_source run function alchemika:block/cauldron/heat
execute if block ~ ~-1 ~ #alchemika:soulburn_source run function alchemika:block/cauldron/soulburn
execute if predicate alchemika:nether run function alchemika:block/cauldron/heat
execute if block ~ ~-1 ~ #alchemika:cold_source run function alchemika:block/cauldron/interact/chill/check
function alchemika:block/cauldron/interact/passive/check
scoreboard players add @s alch.interact_timer 1
execute if score @s alch.interact_timer matches 60.. run function alchemika:block/cauldron/interact/stagnate/check
execute positioned over motion_blocking if entity @s[distance=..2] if predicate alchemika:raining unless score @s alch.rm_space matches ..0 run function alchemika:block/cauldron/environmental/rainwater