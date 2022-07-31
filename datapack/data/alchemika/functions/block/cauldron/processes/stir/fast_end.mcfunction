playsound minecraft:item.bucket.fill_lava block @a ~ ~ ~ 1 1.3
particle minecraft:smoke ~ ~0.3 ~ 0.2 0 0.2 0.1 30
execute if score @s alch.gunpowder matches 111.. run function alchemika:block/cauldron/processes/stir/separate_gunpowder
function alchemika:block/cauldron/update_visual