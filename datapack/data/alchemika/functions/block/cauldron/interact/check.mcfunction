execute positioned ~ ~ ~ run data remove entity @e[type=interaction,sort=nearest,limit=1,tag=alch.cauldron_interaction] interaction
scoreboard players set $temp.count alch.dummy 0
data modify storage alchemika:storage temp.matched_recipes set value []
$data modify storage alchemika:storage temp.matched_recipes append from storage alchemika:registry recipes.item_in[{id:"$(id)",tag:$(tag)}]
execute if data storage alchemika:storage temp.matched_recipes[0] run function alchemika:block/cauldron/interact/match_one with storage alchemika:storage temp.matched_recipes[0]
#execute unless entity @s[tag=alch.matched] run data modify storage alchemika:storage temp.matched_recipes set value []
#$execute unless entity @s[tag=alch.matched] run data modify storage alchemika:storage temp.matched_recipes append from storage alchemika:registry recipes.item_in_with_material[{id:$(id),tag:$(tag)}]
say a
data remove entity @s interaction