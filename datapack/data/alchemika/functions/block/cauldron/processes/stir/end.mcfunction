execute if score @s alch.stirs matches 2..6 run function alchemika:block/cauldron/processes/stir/slow_end
execute if score @s alch.stirs matches 7.. run function alchemika:block/cauldron/processes/stir/fast_end
scoreboard players set @s alch.stirs 0