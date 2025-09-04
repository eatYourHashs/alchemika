tag @s add alch.interacter
data remove storage alchemika:storage temp.item
data modify storage alchemika:storage temp.item set from entity @s SelectedItem
execute at @s as @e[tag=alch.phial_rack_interaction,distance=..10] if data entity @s interaction at @s positioned ~ ~0.5 ~ run function alchemika:block/phial_rack/interact/check
advancement revoke @s only alchemika:technical/phial_rack_interact
tag @s remove alch.interacter