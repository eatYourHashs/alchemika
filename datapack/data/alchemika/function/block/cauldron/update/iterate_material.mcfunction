$function alchemika:block/cauldron/update/use_material with storage alchemika:registry materials[{id:$(id)}]
scoreboard players remove $temp.count alch.dummy 1
data remove storage alchemika:storage temp.cauldron[0]
execute if score $temp.count alch.dummy matches 1.. run function alchemika:block/cauldron/update/iterate_material with storage alchemika:storage temp.cauldron[0]