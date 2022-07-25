scoreboard players remove @s alch.water 333
scoreboard players remove @s alch.total 333
scoreboard players add @s alch.rm_space 333
data modify storage alchemika:storage item.id set value "minecraft:potion"
playsound minecraft:item.bottle.fill block @a ~ ~ ~ 1 1
tag @s add alch.update