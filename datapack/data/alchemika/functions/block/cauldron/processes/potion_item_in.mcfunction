tag @s add alch.potion_processed

execute if data storage alchemika:storage item{id:"minecraft:gunpowder"} if data entity @s HandItems[{id:"minecraft:potion"}] run function alchemika:block/cauldron/processes/potion/splash
execute if data storage alchemika:storage item{id:"minecraft:dragon_breath"} if data entity @s HandItems[{id:"minecraft:splash_potion"}] run function alchemika:block/cauldron/processes/potion/lingering
execute if data storage alchemika:storage item{id:"minecraft:glowstone_dust"} run function alchemika:block/cauldron/processes/potion/glowstone
execute if data storage alchemika:storage item{id:"minecraft:redstone"} run function alchemika:block/cauldron/processes/potion/redstone