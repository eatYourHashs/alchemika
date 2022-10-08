tag @s add alch.potion_processed

#modifiers
execute if data storage alchemika:storage item{id:"minecraft:gunpowder"} if data entity @s HandItems[{id:"minecraft:potion"}] run function alchemika:block/cauldron/processes/potion/splash
execute if data storage alchemika:storage item{id:"minecraft:dragon_breath"} if data entity @s HandItems[{id:"minecraft:splash_potion"}] run function alchemika:block/cauldron/processes/potion/lingering
execute if data storage alchemika:storage item{id:"minecraft:glowstone_dust"} run function alchemika:block/cauldron/processes/potion/glowstone
execute if data storage alchemika:storage item{id:"minecraft:redstone"} run function alchemika:block/cauldron/processes/potion/redstone

#ingredients

#explode
execute store result score $temp alch.dummy run data get entity @s HandItems[0].tag.alch_dat.potion.tag.CustomPotionEffects
execute if score $temp alch.dummy matches 2.. unless entity @s[tag=alch.orichalcum_cauldron] run function alchemika:block/cauldron/processes/potion/explode