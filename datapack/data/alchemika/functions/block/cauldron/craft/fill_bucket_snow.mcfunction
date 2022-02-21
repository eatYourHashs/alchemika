scoreboard players remove @s alch.snow 1000
scoreboard players remove @s alch.total 1000
scoreboard players add @s alch.rm_space 1000
data modify storage alchemika:storage item.id set value "minecraft:powder_snow_bucket"
playsound minecraft:item.bucket.fill_powder_snow block @a ~ ~ ~ 1 1
tag @s add alch.update