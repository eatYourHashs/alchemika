scoreboard players add @s alch.rm_space 1
scoreboard players remove @s alch.total 1
scoreboard players remove @s alch.water 1
execute if predicate alchemika:random/one_twentieth run playsound minecraft:entity.generic.extinguish_fire block @a ~ ~ ~ 0.2 1
particle minecraft:rain ~ ~0.8 ~ 0.3 0 0.3 0 2
tag @s add alch.update