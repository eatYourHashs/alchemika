item replace entity @s armor.head with minecraft:leather_horse_armor{display:{color:16777215},CustomModelData:426002}
#add new hot fluids to this line
execute unless score @s alch.lava matches 1.. run tag @s add alch.not_hot
#add new powder fluids to this line
execute unless score @s alch.snow matches 1.. unless score @s alch.gunpowder matches 1.. unless score @s alch.sulfur matches 1.. run tag @s add alch.not_powder
execute unless entity @s[tag=alch.not_hot] if entity @s[tag=alch.not_powder] run item replace entity @s armor.head with minecraft:leather_horse_armor{display:{color:16777215},CustomModelData:426001}
execute if entity @s[tag=alch.not_hot] if entity @s[tag=alch.not_powder] run item replace entity @s armor.head with minecraft:leather_horse_armor{display:{color:16777215},CustomModelData:426000}
#add new fluids to this line
execute unless score @s alch.water matches 1.. unless score @s alch.lava matches 1.. unless score @s alch.snow matches 1.. unless score @s alch.gunpowder matches 1.. unless score @s alch.sulfur matches 1.. unless score @s alch.acid matches 1.. run item replace entity @s armor.head with minecraft:air

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
scoreboard players operation $temp alch.dummy *= $cons.75 alch.dummy
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

scoreboard players operation $temp alch.dummy = @s alch.gunpowder
scoreboard players operation $temp alch.dummy *= $cons.125 alch.dummy
scoreboard players operation $temp.red alch.dummy += $temp alch.dummy
scoreboard players operation $temp alch.dummy = @s alch.gunpowder
scoreboard players operation $temp alch.dummy *= $cons.125 alch.dummy
scoreboard players operation $temp.green alch.dummy += $temp alch.dummy
scoreboard players operation $temp alch.dummy = @s alch.gunpowder
scoreboard players operation $temp alch.dummy *= $cons.125 alch.dummy
scoreboard players operation $temp.blue alch.dummy += $temp alch.dummy

scoreboard players operation $temp alch.dummy = @s alch.sulfur
scoreboard players operation $temp alch.dummy *= $cons.255 alch.dummy
scoreboard players operation $temp.red alch.dummy += $temp alch.dummy
scoreboard players operation $temp alch.dummy = @s alch.sulfur
scoreboard players operation $temp alch.dummy *= $cons.255 alch.dummy
scoreboard players operation $temp.green alch.dummy += $temp alch.dummy
scoreboard players operation $temp alch.dummy = @s alch.sulfur
scoreboard players operation $temp alch.dummy *= $cons.50 alch.dummy
scoreboard players operation $temp.blue alch.dummy += $temp alch.dummy

#scoreboard players operation $temp alch.dummy = @s alch.acid
#scoreboard players operation $temp alch.dummy *= $cons.0 alch.dummy
#scoreboard players operation $temp.red alch.dummy += $temp alch.dummy
scoreboard players operation $temp alch.dummy = @s alch.acid
scoreboard players operation $temp alch.dummy *= $cons.255 alch.dummy
scoreboard players operation $temp.green alch.dummy += $temp alch.dummy
#scoreboard players operation $temp alch.dummy = @s alch.acid
#scoreboard players operation $temp alch.dummy *= $cons.0 alch.dummy
#scoreboard players operation $temp.blue alch.dummy += $temp alch.dummy

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
tag @s remove alch.not_powder

execute if score @s alch.lava matches 999 run item replace entity @s armor.head with minecraft:structure_block{CustomModelData:426001}
execute if score @s alch.snow matches 999 run item replace entity @s armor.head with minecraft:structure_block{CustomModelData:426002}