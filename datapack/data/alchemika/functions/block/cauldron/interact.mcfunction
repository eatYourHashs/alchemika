tag @s add alch.interacter
data modify storage alchemika:storage temp.item set from entity @s SelectedItem
execute as @e[tag=alch.cauldron_interaction,distance=..10] if data entity @s interaction at @s positioned ~ ~-0.5 ~ as @e[tag=alch.cauldron,limit=1,sort=nearest] run function alchemika:block/cauldron/interact/check with storage alchemika:storage temp.item
advancement revoke @s only alchemika:technical/cauldron_interact
tag @s remove alch.interacter