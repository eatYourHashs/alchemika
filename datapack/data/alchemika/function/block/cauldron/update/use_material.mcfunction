execute store result score $temp.amount alch.dummy run data get storage alchemika:storage temp.cauldron[0].amount
$execute if score $temp.amount alch.dummy = @s alch.used_space unless data storage alchemika:registry materials[{id:$(id),pure:"null"}] run tag @s add alch.pure
$execute if entity @s[tag=alch.pure] unless data storage alchemika:registry materials[{id:$(id),pure:"null"}] run data modify entity @s item.components."minecraft:item_model" set value $(pure)
$tag @s add alch.$(tag)
scoreboard players operation $temp alch.dummy = $temp.amount alch.dummy
$scoreboard players set $temp.mult alch.dummy $(red)
scoreboard players operation $temp alch.dummy *= $temp.mult alch.dummy
scoreboard players operation $temp.red alch.dummy += $temp alch.dummy
scoreboard players operation $temp alch.dummy = $temp.amount alch.dummy
$scoreboard players set $temp.mult alch.dummy $(green)
scoreboard players operation $temp alch.dummy *= $temp.mult alch.dummy
scoreboard players operation $temp.green alch.dummy += $temp alch.dummy
scoreboard players operation $temp alch.dummy = $temp.amount alch.dummy
$scoreboard players set $temp.mult alch.dummy $(blue)
scoreboard players operation $temp alch.dummy *= $temp.mult alch.dummy
scoreboard players operation $temp.blue alch.dummy += $temp alch.dummy
#execute if data storage alchemika:storage temp.cauldron[0]{id:"potion"} run function alchemika:block/cauldron/update/potion/use
