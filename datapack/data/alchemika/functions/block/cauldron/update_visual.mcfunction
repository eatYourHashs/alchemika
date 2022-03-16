item replace entity @s armor.head with minecraft:leather_horse_armor{display:{color:16777215},CustomModelData:426001}
execute unless score @s alch.lava matches 1.. run tag @s add alch.not_hot
execute if entity @s[tag=alch.not_hot] run item replace entity @s armor.head with minecraft:leather_horse_armor{display:{color:16777215},CustomModelData:426000}
execute unless score @s alch.water matches 1.. unless score @s alch.lava matches 1.. unless score @s alch.snow matches 1.. run item replace entity @s armor.head with minecraft:air

scoreboard players set $temp.red alch.dummy 0
scoreboard players set $temp.green alch.dummy 0
scoreboard players set $temp.blue alch.dummy 0

scoreboard players operation $temp alch.dummy = @s alch.water
scoreboard players operation $temp alch.dummy *= $cons.255 alch.dummy
scoreboard players operation $temp.blue alch.dummy += $temp alch.dummy
scoreboard players operation $temp alch.dummy = @s alch.water
scoreboard players operation $temp alch.dummy *= $cons.80 alch.dummy
scoreboard players operation $temp.green alch.dummy += $temp alch.dummy
scoreboard players operation $temp alch.dummy = @s alch.water
scoreboard players operation $temp alch.dummy *= $cons.25 alch.dummy
scoreboard players operation $temp.red alch.dummy += $temp alch.dummy

scoreboard players operation $temp alch.dummy = @s alch.lava
scoreboard players operation $temp alch.dummy *= $cons.50 alch.dummy
scoreboard players operation $temp.green alch.dummy += $temp alch.dummy
scoreboard players operation $temp alch.dummy = @s alch.lava
scoreboard players operation $temp alch.dummy *= $cons.200 alch.dummy
scoreboard players operation $temp.red alch.dummy += $temp alch.dummy
scoreboard players operation $temp alch.dummy = @s alch.lava
scoreboard players operation $temp alch.dummy *= $cons.10 alch.dummy
scoreboard players operation $temp.blue alch.dummy += $temp alch.dummy

scoreboard players operation $temp alch.dummy = @s alch.rm_space
scoreboard players operation $temp alch.dummy *= $cons.255 alch.dummy
scoreboard players operation $temp.red alch.dummy += $temp alch.dummy
scoreboard players operation $temp alch.dummy = @s alch.rm_space
scoreboard players operation $temp alch.dummy *= $cons.255 alch.dummy
scoreboard players operation $temp.green alch.dummy += $temp alch.dummy
scoreboard players operation $temp alch.dummy = @s alch.rm_space
scoreboard players operation $temp alch.dummy *= $cons.255 alch.dummy
scoreboard players operation $temp.blue alch.dummy += $temp alch.dummy

scoreboard players operation $temp alch.dummy = @s alch.snow
scoreboard players operation $temp alch.dummy *= $cons.255 alch.dummy
scoreboard players operation $temp.red alch.dummy += $temp alch.dummy
scoreboard players operation $temp alch.dummy = @s alch.snow
scoreboard players operation $temp alch.dummy *= $cons.255 alch.dummy
scoreboard players operation $temp.green alch.dummy += $temp alch.dummy
scoreboard players operation $temp alch.dummy = @s alch.snow
scoreboard players operation $temp alch.dummy *= $cons.255 alch.dummy
scoreboard players operation $temp.blue alch.dummy += $temp alch.dummy

scoreboard players operation $temp.red alch.dummy /= $cons.999 alch.dummy
scoreboard players operation $temp.blue alch.dummy /= $cons.999 alch.dummy
scoreboard players operation $temp.green alch.dummy /= $cons.999 alch.dummy
scoreboard players operation $temp.red alch.dummy *= $cons.65536 alch.dummy
scoreboard players operation $temp.green alch.dummy *= $cons.256 alch.dummy
scoreboard players operation $temp alch.dummy = $temp.red alch.dummy
scoreboard players operation $temp alch.dummy += $temp.green alch.dummy
scoreboard players operation $temp alch.dummy += $temp.blue alch.dummy
execute store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players get $temp alch.dummy

execute unless entity @s[tag=alch.not_hot] if block ~ ~1 ~ air run setblock ~ ~1 ~ light[level=15]
execute if entity @s[tag=alch.not_hot] if block ~ ~1 ~ light run setblock ~ ~1 ~ air
tag @s remove alch.not_hot