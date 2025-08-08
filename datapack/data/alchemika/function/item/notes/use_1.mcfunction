execute unless score @s alch.notes matches 1.. run function alchemika:item/notes/convert/1/intro

# give random note if all tier 1 notes found
execute if score @s alch.notes matches 4.. run function alchemika:item/notes/random_1