execute store result score $rand alch.dummy run random value 1..19
execute if score $rand alch.dummy matches 1..17 run function alchemika:item/notes/random_3
execute if score $rand alch.dummy matches 18 run function alchemika:item/notes/convert {ord:18,name:"dragon_acid"}
execute if score $rand alch.dummy matches 19 run function alchemika:item/notes/convert {ord:19,name:"cooking_4"}