execute unless score @s alch.notes matches 1.. run function alchemika:item/notes/convert {ord:1,name:"intro"}
execute if score @s alch.notes matches 1 unless entity @s[tag=alch.converted] run function alchemika:item/notes/convert {ord:2,name:"smelting"}
execute if score @s alch.notes matches 2 unless entity @s[tag=alch.converted] run function alchemika:item/notes/convert {ord:3,name:"sulfur_salt"}
execute if score @s alch.notes matches 3 unless entity @s[tag=alch.converted] run function alchemika:item/notes/convert {ord:4,name:"cooking"}

# give random note if all tier 1 notes found
execute if score @s alch.notes matches 4.. unless entity @s[tag=alch.converted] run function alchemika:item/notes/random_1