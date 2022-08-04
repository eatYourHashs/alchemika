scoreboard players set $cast.temp alch.dummy 14
execute unless score @s alch.raw_copper matches 111.. unless score @s alch.raw_iron matches 111.. if score @s alch.raw_gold matches 111.. unless score @s alch.gunpowder matches 111.. unless score @s alch.sulfur matches 111.. run function alchemika:item/scoop/scoop_gold
execute unless score @s alch.raw_copper matches 111.. if score @s alch.raw_iron matches 111.. unless score @s alch.gunpowder matches 111.. unless score @s alch.sulfur matches 111.. run function alchemika:item/scoop/scoop_iron
execute if score @s alch.raw_copper matches 111.. unless score @s alch.gunpowder matches 111.. unless score @s alch.sulfur matches 111.. run function alchemika:item/scoop/scoop_copper
execute if score @s alch.gunpowder matches 111.. unless score @s alch.sulfur matches 111.. run function alchemika:item/scoop/scoop_gunpowder
execute if score @s alch.sulfur matches 111.. run function alchemika:item/scoop/scoop_sulfur