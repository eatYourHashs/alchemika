execute if score @s alch.gunpowder matches 1..5 run scoreboard players operation @s alch.rm_space += @s alch.gunpowder
execute if score @s alch.gunpowder matches 1..5 run scoreboard players operation @s alch.total -= @s alch.gunpowder
execute if score @s alch.gunpowder matches 1..5 run scoreboard players set @s alch.gunpowder 0
execute if score @s alch.gunpowder matches 6.. run scoreboard players add @s alch.rm_space 6
execute if score @s alch.gunpowder matches 6.. run scoreboard players remove @s alch.total 6
execute if score @s alch.gunpowder matches 6.. run scoreboard players remove @s alch.gunpowder 6
execute if predicate alchemika:random/one_twentieth run playsound minecraft:entity.generic.extinguish_fire block @a ~ ~ ~ 0.2 1
particle minecraft:flame ~ ~0.8 ~ 0.3 0 0.3 0 2
tag @s add alch.update