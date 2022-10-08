tag @s add alch.potion_processed

execute if data storage alchemika:storage item{id:"minecraft:gunpowder"} run function alchemika:block/cauldron/craft/pure_add/gunpowder
execute if data storage alchemika:storage item{id:"minecraft:glowstone_dust"} run function alchemika:block/cauldron/craft/pure_add/glowstone
execute if data storage alchemika:storage item{id:"minecraft:redstone"} if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/redstone