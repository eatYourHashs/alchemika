$execute if score @s alch.notes matches ..$(ord) run scoreboard players set @s alch.notes $(ord)
$loot replace entity @s weapon.mainhand loot alchemika:item/notes/$(name)
tag @s add alch.converted