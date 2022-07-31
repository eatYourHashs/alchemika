execute if score @s alch.raw_gold matches 1..5 run scoreboard players operation @s alch.molten_gold += @s alch.raw_gold
execute if score @s alch.raw_gold matches 1..5 run scoreboard players set @s alch.raw_gold 0
execute if score @s alch.raw_gold matches 6.. run scoreboard players add @s alch.molten_gold 6
execute if score @s alch.raw_gold matches 6.. run scoreboard players remove @s alch.raw_gold 6
execute if predicate alchemika:random/one_twentieth run playsound minecraft:block.blastfurnace.fire_crackle block @a ~ ~ ~ 0.3 1
tag @s add alch.update