execute if score @s alch.raw_iron matches 1..5 run scoreboard players operation @s alch.molten_iron += @s alch.raw_iron
execute if score @s alch.raw_iron matches 1..5 run scoreboard players set @s alch.raw_iron 0
execute if score @s alch.raw_iron matches 6.. run scoreboard players add @s alch.molten_iron 6
execute if score @s alch.raw_iron matches 6.. run scoreboard players remove @s alch.raw_iron 6
execute if predicate alchemika:random/one_twentieth run playsound minecraft:block.blastfurnace.fire_crackle block @a ~ ~ ~ 0.3 1
tag @s add alch.update