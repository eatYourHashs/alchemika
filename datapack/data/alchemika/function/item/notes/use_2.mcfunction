execute if score @s alch.notes matches 4 unless entity @s[tag="alch.converted"] run function alchemika:item/notes/convert {ord:5,name:"acid"}
execute if score @s alch.notes matches 5 unless entity @s[tag="alch.converted"] run function alchemika:item/notes/convert {ord:6,name:"phial"}
execute if score @s alch.notes matches 6 unless entity @s[tag="alch.converted"] run function alchemika:item/notes/convert {ord:7,name:"cooking_2"}
execute if score @s alch.notes matches 7 unless entity @s[tag="alch.converted"] run function alchemika:item/notes/convert {ord:8,name:"phial_rack"}
execute if score @s alch.notes matches 8 unless entity @s[tag="alch.converted"] run function alchemika:item/notes/convert {ord:9,name:"syringe"}
execute if score @s alch.notes matches 9 unless entity @s[tag="alch.converted"] run function alchemika:item/notes/convert {ord:10,name:"bio_acid"}

# give random note if all tier 1 notes found
execute if score @s alch.notes matches 10.. unless entity @s[tag="alch.converted"] run function alchemika:item/notes/random_2

tag @s remove alch.converted