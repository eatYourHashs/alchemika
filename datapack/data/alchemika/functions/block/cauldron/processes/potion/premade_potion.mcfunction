scoreboard players add @s alch.potion 333
scoreboard players add @s alch.total 333
scoreboard players remove @s alch.rm_space 333
item replace entity @s weapon.mainhand with minecraft:structure_block{CustomModelData:426000,alch_dat:{potion:{}}}
data modify entity @s HandItems[0].tag.alch_dat.potion set from storage alchemika:storage item