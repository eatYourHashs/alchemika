execute unless block ~ ~-1 ~ #alchemika:cold_source if predicate alchemika:nether run function alchemika:block/cauldron/processes/heat_processing
execute if entity @s[tag=alch.update] run function alchemika:block/cauldron/update_visual
tag @s remove alch.update
execute if score @s alch.rm_space matches 111.. as @a[distance=..5,tag=!alch.input_tutorial_clear,predicate=alchemika:tutorials/input] run function alchemika:entity/player/tutorials/input
execute if score @s alch.water matches 333.. as @a[distance=..5,tag=!alch.removal_tutorial_clear,predicate=alchemika:tutorials/removal_bottle] run function alchemika:entity/player/tutorials/removal
execute if score @s alch.water matches 999.. as @a[distance=..5,tag=!alch.removal_tutorial_clear,predicate=alchemika:tutorials/removal_bucket] run function alchemika:entity/player/tutorials/removal