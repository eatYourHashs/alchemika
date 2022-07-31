execute if score @s alch.raw_iron matches 1..8 run scoreboard players operation @s alch.molten_iron += @s alch.raw_iron
execute if score @s alch.raw_iron matches 3..8 run scoreboard players add @s alch.molten_iron 1
execute if score @s alch.raw_iron matches 6..8 run scoreboard players add @s alch.molten_iron 1
execute if score @s alch.raw_iron matches 3..8 run scoreboard players remove @s alch.acid 1
execute if score @s alch.raw_iron matches 6..8 run scoreboard players remove @s alch.acid 1
execute if score @s alch.raw_iron matches 1..8 run scoreboard players set @s alch.raw_iron 0
execute if score @s alch.raw_iron matches 9.. run scoreboard players add @s alch.molten_iron 12
execute if score @s alch.raw_iron matches 9.. run scoreboard players remove @s alch.acid 3
execute if score @s alch.raw_iron matches 9.. run scoreboard players remove @s alch.raw_iron 9
execute if predicate alchemika:random/one_twentieth run playsound minecraft:block.blastfurnace.fire_crackle block @a ~ ~ ~ 0.3 1
tag @s add alch.update