execute unless score @s alch.notes matches 17.. run function alchemika:item/notes/use_3
execute if score @s alch.notes matches 17 unless entity @s[tag=alch.converted] run function alchemika:item/notes/convert {ord:18,name:"dragon_acid"}
execute if score @s alch.notes matches 18 unless entity @s[tag=alch.converted] run function alchemika:item/notes/convert {ord:19,name:"cooking_4"}

# give random note if all tier 1 notes found
execute if score @s alch.notes matches 19.. unless entity @s[tag=alch.converted] run function alchemika:item/notes/random_4