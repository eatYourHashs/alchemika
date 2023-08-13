execute positioned ~ ~0.5 ~ run data remove entity @e[type=interaction,sort=nearest,limit=1,tag=alch.cauldron_interaction] interaction
scoreboard players set $temp.count alch.dummy 0
data modify storage alchemika:storage temp.matched_recipes set value []
#if i want to whitelist tags i should do that here
$data modify storage alchemika:storage temp.matched_recipes append from storage alchemika:registry recipes.item_in[{id:$(id),tag:$(tag)}]