execute if score @s alch.stirs matches 1..3 run function alchemika:block/cauldron/processes/stir/slow_end
execute if score @s alch.stirs matches 4.. run function alchemika:block/cauldron/processes/stir/fast_end
scoreboard players set @s alch.stirs 0