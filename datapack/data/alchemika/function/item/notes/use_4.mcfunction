execute unless score @s alch.notes matches 19.. run function alchemika:item/notes/use_3
execute if score @s alch.notes matches 19 unless entity @s[tag=alch.converted] run function alchemika:item/notes/convert {ord:20,name:"dragon_acid"}
execute if score @s alch.notes matches 20 unless entity @s[tag=alch.converted] run function alchemika:item/notes/convert {ord:21,name:"cooking_4"}
execute if score @s alch.notes matches 21 unless entity @s[tag=alch.converted] run function alchemika:item/notes/convert {ord:22,name:"propellant_rocket"}

execute if score @s alch.notes matches 22.. run advancement grant @s only alchemika:alchemika/all_notes all_notes
# give random note if all tier 1 notes found
execute if score @s alch.notes matches 22.. unless entity @s[tag=alch.converted] run function alchemika:item/notes/random_4