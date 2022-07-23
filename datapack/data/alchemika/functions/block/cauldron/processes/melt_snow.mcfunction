execute if score @s alch.snow matches 1..2 run scoreboard players operation @s alch.rm_space += @s alch.snow
execute if score @s alch.snow matches 1..2 run scoreboard players operation @s alch.total -= @s alch.snow
execute if score @s alch.snow matches 1..2 run scoreboard players set @s alch.snow 0
execute if score @s alch.snow matches 3.. run scoreboard players add @s alch.rm_space 2
execute if score @s alch.snow matches 3.. run scoreboard players remove @s alch.total 2
execute if score @s alch.snow matches 3.. run scoreboard players add @s alch.water 1
execute if score @s alch.snow matches 3.. run scoreboard players remove @s alch.snow 3
execute if predicate alchemika:random/one_twentieth run playsound minecraft:entity.generic.extinguish_fire block @a ~ ~ ~ 0.2 1
tag @s add alch.update