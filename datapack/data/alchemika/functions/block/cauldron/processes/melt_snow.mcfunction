execute if score @s alch.snow matches 1..9 run scoreboard players operation @s alch.rm_space += @s alch.snow
execute if score @s alch.snow matches 1..9 run scoreboard players operation @s alch.total -= @s alch.snow
execute if score @s alch.snow matches 1..9 run scoreboard players set @s alch.snow 0
execute if score @s alch.snow matches 10.. run scoreboard players add @s alch.rm_space 5
execute if score @s alch.snow matches 10.. run scoreboard players remove @s alch.total 5
execute if score @s alch.snow matches 10.. run scoreboard players add @s alch.water 5
execute if score @s alch.snow matches 10.. run scoreboard players remove @s alch.snow 10
execute if predicate alchemika:random/one_twentieth run playsound minecraft:entity.generic.extinguish_fire block @a ~ ~ ~ 0.2 1
tag @s add alch.update