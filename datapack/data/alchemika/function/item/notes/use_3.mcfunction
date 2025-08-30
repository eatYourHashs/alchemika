execute if score @s alch.notes matches 10 unless entity @s[tag="alch.converted"] run function alchemika:item/notes/convert {ord:11,name:"orichalcum"}
execute if score @s alch.notes matches 11 unless entity @s[tag="alch.converted"] run function alchemika:item/notes/convert {ord:12,name:"cooking_3"}
execute if score @s alch.notes matches 12 unless entity @s[tag="alch.converted"] run function alchemika:item/notes/convert {ord:13,name:"quicksilver"}
execute if score @s alch.notes matches 13 unless entity @s[tag="alch.converted"] run function alchemika:item/notes/convert {ord:14,name:"xp"}
execute if score @s alch.notes matches 14 unless entity @s[tag="alch.converted"] run function alchemika:item/notes/convert {ord:15,name:"chemical_thrower"}
execute if score @s alch.notes matches 15 unless entity @s[tag="alch.converted"] run function alchemika:item/notes/convert {ord:16,name:"alkaline_base"}
execute if score @s alch.notes matches 16 unless entity @s[tag="alch.converted"] run function alchemika:item/notes/convert {ord:17,name:"propellant"}

# give random note if all tier 1 notes found
execute if score @s alch.notes matches 17.. unless entity @s[tag="alch.converted"] run function alchemika:item/notes/random_3

tag @s remove alch.converted