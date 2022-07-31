execute unless score @s alch.stir_timer matches 1.. run function alchemika:item/stirring_rod/start_stir
scoreboard players add @s alch.stirs 1
playsound minecraft:item.bucket.empty_lava block @a ~ ~ ~ 1 1.5
particle minecraft:effect ~ ~0.3 ~ 0.2 0 0.2 0 4