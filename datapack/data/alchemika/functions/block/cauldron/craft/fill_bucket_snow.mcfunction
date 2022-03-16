scoreboard players remove @s alch.snow 999
scoreboard players remove @s alch.total 999
scoreboard players add @s alch.rm_space 999
data modify storage alchemika:storage item.id set value "minecraft:powder_snow_bucket"
playsound minecraft:item.bucket.fill_powder_snow block @a ~ ~ ~ 1 1
tag @s add alch.update