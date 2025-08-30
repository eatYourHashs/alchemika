$scoreboard players set ord alch.dummy $(ord)
$execute unless score @s alch.notes > ord alch.dummy run scoreboard players set @s alch.notes $(ord)
$loot replace entity @s weapon.mainhand loot alchemika:item/notes/$(name)
tag @s add alch.converted