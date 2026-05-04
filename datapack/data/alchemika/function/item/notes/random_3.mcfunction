execute store result score $rand alch.dummy run random value 1..19
execute if score $rand alch.dummy matches 1..12 run function alchemika:item/notes/random_2
execute if score $rand alch.dummy matches 13 run function alchemika:item/notes/convert {ord:13,name:"orichalcum"}
execute if score $rand alch.dummy matches 14 run function alchemika:item/notes/convert {ord:14,name:"cooking_3"}
execute if score $rand alch.dummy matches 15 run function alchemika:item/notes/convert {ord:15,name:"quicksilver"}
execute if score $rand alch.dummy matches 16 run function alchemika:item/notes/convert {ord:16,name:"xp"}
execute if score $rand alch.dummy matches 17 run function alchemika:item/notes/convert {ord:17,name:"chemical_thrower"}
execute if score $rand alch.dummy matches 18 run function alchemika:item/notes/convert {ord:18,name:"alkaline_base"}
execute if score $rand alch.dummy matches 19 run function alchemika:item/notes/convert {ord:19,name:"propellant"}