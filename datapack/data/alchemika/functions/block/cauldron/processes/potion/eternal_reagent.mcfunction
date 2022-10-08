data modify entity @s HandItems[0].tag.CustomPotionEffects[{Duration:9600,Amplifier:0b}].Duration set value 24000
data modify entity @s HandItems[0].tag.CustomPotionEffects[{Duration:2400,Amplifier:0b}].Duration set value 6000
execute store result score $temp alch.dummy run data get storage alchemika:storage item.Count
scoreboard players remove $temp alch.dummy 1
execute unless score $temp alch.dummy matches 1.. run kill @e[type=item,tag=!smithed.strict,dx=1,dy=0.6,dz=1,limit=1,sort=nearest]
execute store result storage alchemika:storage item.Count byte 1 run scoreboard players get $temp alch.dummy
tag @s add alch.update