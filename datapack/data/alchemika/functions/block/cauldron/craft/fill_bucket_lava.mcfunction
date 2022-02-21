scoreboard players remove @s alch.lava 1000
scoreboard players remove @s alch.total 1000
scoreboard players add @s alch.rm_space 1000
data modify storage alchemika:storage item.id set value "minecraft:lava_bucket"
playsound minecraft:item.bucket.fill_lava block @a ~ ~ ~ 1 1
tag @s add alch.update