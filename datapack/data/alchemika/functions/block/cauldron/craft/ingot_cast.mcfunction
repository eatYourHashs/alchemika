execute store result score $temp alch.dummy run data get storage alchemika:storage item.Count
scoreboard players remove $temp alch.dummy 1
execute if score $temp alch.dummy matches ..0 run kill @e[type=item,tag=!smithed.strict,dx=1,dy=0.6,dz=1,limit=1,sort=nearest]
loot spawn ~ ~0.7 ~ loot alchemika:items/ingot_cast
execute positioned ~ ~0.7 ~ run data modify entity @e[type=item,sort=nearest,limit=1] Motion set value [0.0,0.5,0.0]
execute store result storage alchemika:storage item.Count byte 1 run scoreboard players get $temp alch.dummy
scoreboard players remove @s alch.clay 333
scoreboard players remove @s alch.total 333
scoreboard players add @s alch.rm_space 333
tag @s add alch.update
