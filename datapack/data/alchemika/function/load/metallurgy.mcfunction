# registry of all cauldron compatible substances
data modify storage alchemika:registry materials merge value []

# registry of all item to substance recipes
data modify storage alchemika:registry recipes.item_in merge value []

# registry of all item+substance to item+substance recipes
data modify storage alchemika:registry recipes.item_in_with_material merge value []

# other crafting methods
data modify storage alchemika:registry recipes.stir merge value []
data modify storage alchemika:registry recipes.stagnate merge value []
data modify storage alchemika:registry recipes.passive merge value []
data modify storage alchemika:registry recipes.heat merge value []
data modify storage alchemika:registry recipes.chill merge value []
data modify storage alchemika:registry recipes.soulburn merge value []

# scooping recipes
data modify storage alchemika:registry recipes.scoop merge value []
# ingot casting recipes
data modify storage alchemika:registry recipes.ingot_cast merge value []
