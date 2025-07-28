tag @s add alch.processed
execute store result score @s alch.uuid run data get entity @s UUID[0]
scoreboard players operation @s alch.version = $version alch.version