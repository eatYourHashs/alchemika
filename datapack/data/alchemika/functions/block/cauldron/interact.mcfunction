tag @s add alch.interacter
data modify storage alchemika:storage temp.item set from entity @s SelectedItem
#if i want to whitelist tags i should do that here
execute unless data storage alchemika:storage temp.item.tag run data modify storage alchemika:storage temp.item.tag set value {}
data remove storage alchemika:storage temp.item.Count
data remove storage alchemika:storage temp.item.tag.display
data remove storage alchemika:storage temp.item.tag.CustomModelData
execute at @s as @e[tag=alch.cauldron_interaction,distance=..10] if data entity @s interaction at @s as @e[tag=alch.cauldron,limit=1,sort=nearest] run function alchemika:block/cauldron/interact/check with storage alchemika:storage temp.item
execute if data storage alchemika:storage temp.item.tag.alch_dat{stirring_rod:1b} at @s as @e[tag=alch.cauldron_interaction,distance=..10] if data entity @s interaction at @s as @e[tag=alch.cauldron,limit=1,sort=nearest] run function alchemika:block/cauldron/interact/stir/check
execute if data storage alchemika:storage temp.item.tag.alch_dat{scoop:1b} at @s as @e[tag=alch.cauldron_interaction,distance=..10] if data entity @s interaction at @s as @e[tag=alch.cauldron,limit=1,sort=nearest] run function alchemika:block/cauldron/interact/scoop/check
advancement revoke @s only alchemika:technical/cauldron_interact
tag @s remove alch.interacter