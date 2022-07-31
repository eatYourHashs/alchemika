execute if score @s alch.charcoal matches 1..2 run scoreboard players operation @s alch.rm_space += @s alch.charcoal
execute if score @s alch.charcoal matches 1..2 run scoreboard players operation @s alch.total -= @s alch.gunpowder
execute if score @s alch.charcoal matches 1..2 run scoreboard players set @s alch.charcoal 0
execute if score @s alch.charcoal matches 3.. run scoreboard players add @s alch.rm_space 3
execute if score @s alch.charcoal matches 3.. run scoreboard players remove @s alch.total 3
execute if score @s alch.charcoal matches 3.. run scoreboard players remove @s alch.charcoal 3
execute if predicate alchemika:random/one_twentieth run playsound minecraft:entity.generic.extinguish_fire block @a ~ ~ ~ 0.2 1
particle minecraft:flame ~ ~0.8 ~ 0.3 0 0.3 0 2
tag @s add alch.update