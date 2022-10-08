scoreboard players operation @s alch.potion += @s alch.water
scoreboard players set @s alch.water 0
item replace entity @s weapon.mainhand with minecraft:structure_block{CustomModelData:426000,alch_dat:{potion:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"translate":"item.alch.alchemical_potion","italic":false}'},CustomPotionColor:1658879,CustomPotionEffects:[]}}}}
execute store result score $temp alch.dummy run data get storage alchemika:storage item.Count
scoreboard players remove $temp alch.dummy 1
execute unless score $temp alch.dummy matches 1.. run kill @e[type=item,tag=!smithed.strict,dx=1,dy=0.6,dz=1,limit=1,sort=nearest]
execute store result storage alchemika:storage item.Count byte 1 run scoreboard players get $temp alch.dummy
tag @s add alch.update
playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 1 2