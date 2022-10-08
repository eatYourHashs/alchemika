playsound minecraft:item.bucket.fill_lava block @a ~ ~ ~ 1 0.6
particle minecraft:smoke ~ ~0.3 ~ 0.2 0 0.2 0 30
execute if score @s alch.charcoal matches 74.. if score @s alch.sulfur matches 37.. run function alchemika:block/cauldron/processes/stir/combine_gunpowder
execute if score @s alch.water matches 74.. if score @s alch.sulfur matches 37.. if block ~ ~-1 ~ #alchemika:heat_source run function alchemika:block/cauldron/processes/stir/create_acid
execute if score @s alch.water matches 74.. if score @s alch.sulfur matches 37.. if predicate alchemika:nether run function alchemika:block/cauldron/processes/stir/create_acid
execute if score @s alch.molten_gold matches 37.. if score @s alch.molten_copper matches 37.. if score @s alch.glowstone matches 37.. run function alchemika:block/cauldron/processes/stir/create_orichalcum
function alchemika:block/cauldron/update_visual