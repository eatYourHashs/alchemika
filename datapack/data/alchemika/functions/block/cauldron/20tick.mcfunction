execute unless block ~ ~-1 ~ #alchemika:cold_source if predicate alchemika:nether run function alchemika:block/cauldron/processes/heat_processing
execute if entity @s[tag=alch.update] run function alchemika:block/cauldron/update_visual
tag @s remove alch.update