execute unless score @s alch.notes matches 12.. run function alchemika:item/notes/use_2
execute if score @s alch.notes matches 12 unless entity @s[tag=alch.converted] run function alchemika:item/notes/convert {ord:13,name:"orichalcum"}
execute if score @s alch.notes matches 13 unless entity @s[tag=alch.converted] run function alchemika:item/notes/convert {ord:14,name:"cooking_3"}
execute if score @s alch.notes matches 14 unless entity @s[tag=alch.converted] run function alchemika:item/notes/convert {ord:15,name:"quicksilver"}
execute if score @s alch.notes matches 15 unless entity @s[tag=alch.converted] run function alchemika:item/notes/convert {ord:16,name:"xp"}
execute if score @s alch.notes matches 16 unless entity @s[tag=alch.converted] run function alchemika:item/notes/convert {ord:17,name:"chemical_thrower"}
execute if score @s alch.notes matches 17 unless entity @s[tag=alch.converted] run function alchemika:item/notes/convert {ord:18,name:"alkaline_base"}
execute if score @s alch.notes matches 18 unless entity @s[tag=alch.converted] run function alchemika:item/notes/convert {ord:19,name:"propellant"}

# give random note if all tier 1 notes found
execute if score @s alch.notes matches 19.. unless entity @s[tag=alch.converted] run function alchemika:item/notes/random_3