scoreboard players set $temp.amount alch.dummy 0
$execute store result score $temp.amount alch.dummy run data get storage alchemika:registry recipes.scoop[{material_id:"$(id)"}].material_amount
$execute unless score $temp.amount alch.dummy matches 0 if score $temp.amount alch.dummy matches ..$(amount) run function alchemika:block/cauldron/interact/scoop/craft with storage alchemika:registry recipes.scoop[{material_id:"$(id)"}]

data remove storage alchemika:storage temp.cauldron[0]
scoreboard players remove $temp.count alch.dummy 1
execute unless entity @s[tag=alch.matched] if score $temp.count alch.dummy matches 1.. run function alchemika:block/cauldron/interact/scoop/iterate with storage alchemika:storage temp.cauldron[0]