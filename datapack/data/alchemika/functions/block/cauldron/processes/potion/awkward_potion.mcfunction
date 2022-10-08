scoreboard players operation @s alch.potion += @s alch.water
scoreboard players set @s alch.water 0
item replace entity @s weapon.mainhand with minecraft:structure_block{CustomModelData:426000,alch_dat:{potion:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"translate":"item.alch.alchemical_potion","italic":false}'},CustomPotionColor:1658879,CustomPotionEffects:[]}}}}
tag @s add alch.update