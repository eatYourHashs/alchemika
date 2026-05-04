execute store result score $rand alch.dummy run random value 1..22
execute if score $rand alch.dummy matches 1..19 run function alchemika:item/notes/random_3
execute if score $rand alch.dummy matches 20 run function alchemika:item/notes/convert {ord:20,name:"dragon_acid"}
execute if score $rand alch.dummy matches 21 run function alchemika:item/notes/convert {ord:21,name:"cooking_4"}
execute if score $rand alch.dummy matches 22 run function alchemika:item/notes/convert {ord:22,name:"propellant_rocket"}