data modify storage alchemika:registry alchemy set value {materials:[],recipes:{item_in:[],item_in_with_material:[],stir:[],stagnate:[],passive:[],heat:[],chill:[],soulburn:[],scoop:[],ingot_cast:[]}}
# registry of all cauldron compatible substances
data modify storage alchemika:registry alchemy.materials set value [{id:"molten_orichalcum",red:255,blue:40,green:80,tag:"hot",pure:"null"}]

# registry of all item to substance recipes
data modify storage alchemika:registry alchemy.recipes.item_in set value []

# registry of all item+substance to item+substance recipes
data modify storage alchemika:registry alchemy.recipes.item_in_with_material set value []

# other crafting methods
data modify storage alchemika:registry alchemy.recipes.stir set value [{in1_material_id:"molten_gold",in2_material_id:"molten_copper",in3_material_id:"glowstone",in1_material_amount:72,in2_material_amount:72,in3_material_amount:36,out1_material_id:"molten_orichalcum",out2_material_id:"none",out1_material_amount:144,out2_material_amount:0}]
data modify storage alchemika:registry alchemy.recipes.stagnate set value []
data modify storage alchemika:registry alchemy.recipes.passive set value []
data modify storage alchemika:registry alchemy.recipes.heat set value []
data modify storage alchemika:registry alchemy.recipes.chill set value []
data modify storage alchemika:registry alchemy.recipes.soulburn set value []

# scooping recipes
data modify storage alchemika:registry alchemy.recipes.scoop set value []
# ingot casting recipes
data modify storage alchemika:registry alchemy.recipes.ingot_cast set value [{material_id:"molten_orichalcum",material_amount:144,loot:"alchemika:item/orichalcum_ingot"}]

# add registries to base
function alchemika:load/registry_iterate {source:alchemy,registry:materials}
function alchemika:load/registry_iterate {source:alchemy,registry:recipes.stir}
function alchemika:load/registry_iterate {source:alchemy,registry:recipes.ingot_cast}
