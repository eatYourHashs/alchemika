execute store result score $rand alch.dummy run random value 1..4
execute if score $rand alch.dummy matches 1 run function alchemika:item/notes/convert {ord:1,name:"intro"}
execute if score $rand alch.dummy matches 2 run function alchemika:item/notes/convert {ord:2,name:"smelting"}
execute if score $rand alch.dummy matches 3 run function alchemika:item/notes/convert {ord:3,name:"sulfur_salt"}
execute if score $rand alch.dummy matches 4 run function alchemika:item/notes/convert {ord:4,name:"cooking"}