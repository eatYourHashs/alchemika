tag @s add alch.interacter
data remove storage alchemika:storage temp.item
data remove storage alchemika:storage temp.modified_item
data modify storage alchemika:storage temp.item set from entity @s SelectedItem
data modify storage alchemika:storage temp.modified_item set from storage alchemika:storage temp.item
#if i want to whitelist components i should do that here
execute unless data storage alchemika:storage temp.item.components."minecraft:custom_data" run data modify storage alchemika:storage temp.item.components."minecraft:custom_data" set value {}
data remove storage alchemika:storage temp.item.count
data remove storage alchemika:storage temp.item.components."minecraft:item_name"
data remove storage alchemika:storage temp.item.components."minecraft:lore"
data remove storage alchemika:storage temp.item.components."minecraft:item_model"
data remove storage alchemika:storage temp.item.components."minecraft:rarity"
execute unless data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat{scoop:1b} unless data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat{stirring_rod:1b} unless data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat{ingot_cast:1b} unless data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat{holder:1b} at @s as @e[tag=alch.cauldron_interaction,distance=..10] if data entity @s interaction at @s as @e[tag=alch.cauldron,limit=1,sort=nearest] run function alchemika:block/cauldron/interact/check with storage alchemika:storage temp.item
execute if data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat{stirring_rod:1b} at @s as @e[tag=alch.cauldron_interaction,distance=..10] if data entity @s interaction at @s as @e[tag=alch.cauldron,limit=1,sort=nearest] run function alchemika:block/cauldron/interact/stir/check
execute if data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat{scoop:1b} at @s as @e[tag=alch.cauldron_interaction,distance=..10] if data entity @s interaction at @s as @e[tag=alch.cauldron,limit=1,sort=nearest] run function alchemika:block/cauldron/interact/scoop/check
execute if data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat{ingot_cast:1b} at @s as @e[tag=alch.cauldron_interaction,distance=..10] if data entity @s interaction at @s as @e[tag=alch.cauldron,limit=1,sort=nearest] run function alchemika:block/cauldron/interact/ingot_cast/check
execute if data storage alchemika:storage temp.item.components."minecraft:custom_data".alch_dat{holder:1b} at @s as @e[tag=alch.cauldron_interaction,distance=..10] if data entity @s interaction at @s as @e[tag=alch.cauldron,limit=1,sort=nearest] run function alchemika:block/cauldron/interact/holder/check
advancement revoke @s only alchemika:technical/cauldron_interact
tag @s remove alch.interacter