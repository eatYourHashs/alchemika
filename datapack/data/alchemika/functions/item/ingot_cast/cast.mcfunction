scoreboard players set $cast.temp alch.dummy 14
execute unless score @s alch.molten_copper matches 111.. unless score @s alch.molten_iron matches 111.. unless score @s alch.molten_gold matches 111.. if score @s alch.molten_orichalcum matches 111.. run function alchemika:item/ingot_cast/cast_orichalcum
execute unless score @s alch.molten_copper matches 111.. unless score @s alch.molten_iron matches 111.. if score @s alch.molten_gold matches 111.. run function alchemika:item/ingot_cast/cast_gold
execute unless score @s alch.molten_copper matches 111.. if score @s alch.molten_iron matches 111.. run function alchemika:item/ingot_cast/cast_iron
execute if score @s alch.molten_copper matches 111.. run function alchemika:item/ingot_cast/cast_copper