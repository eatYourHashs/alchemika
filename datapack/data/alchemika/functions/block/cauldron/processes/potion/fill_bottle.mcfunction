execute store result score $temp alch.dummy run data get storage alchemika:storage item.Count
scoreboard players remove $temp alch.dummy 1
execute unless score $temp alch.dummy matches 1.. run kill @e[type=item,tag=!smithed.strict,dx=1,dy=0.6,dz=1,limit=1,sort=nearest]
execute store result storage alchemika:storage item.Count byte 1 run scoreboard players get $temp alch.dummy
tag @s add alch.update
summon item ~ ~ ~ {Tags:["alch.temp_target"],Item:{id:"minecraft:glass_bottle",Count:1b}}
data modify entity @e[type=item,tag=alch.temp_target,limit=1] Item set from entity @s HandItems[0].tag.alch_dat.item
tag @e[tag=alch.temp_target] remove alch.temp_target
scoreboard players remove @s alch.potion 333
scoreboard players remove @s alch.total 333
scoreboard players add @s alch.rm_space 333
playsound minecraft:item.bottle.fill block @a ~ ~ ~