execute store result score $rand alch.dummy run random value 1..10
execute if score $rand alch.dummy matches 1..4 run function alchemika:item/notes/random_1
execute if score $rand alch.dummy matches 5 run function alchemika:item/notes/convert {ord:5,name:"acid"}
execute if score $rand alch.dummy matches 6 run function alchemika:item/notes/convert {ord:6,name:"phial"}
execute if score $rand alch.dummy matches 7 run function alchemika:item/notes/convert {ord:7,name:"cooking_2"}
execute if score $rand alch.dummy matches 8 run function alchemika:item/notes/convert {ord:8,name:"phial_rack"}
execute if score $rand alch.dummy matches 9 run function alchemika:item/notes/convert {ord:9,name:"syringe"}
execute if score $rand alch.dummy matches 10 run function alchemika:item/notes/convert {ord:10,name:"bio_acid"}