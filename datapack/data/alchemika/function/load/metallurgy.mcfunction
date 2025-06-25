data modify storage alchemika:registry metallurgy set value {materials:[],recipes:{item_in:[],item_in_with_material:[],stir:[],stagnate:[],passive:[],heat:[],chill:[],soulburn:[],scoop:[],ingot_cast:[]}}
# registry of all cauldron compatible substances
data modify storage alchemika:registry metallurgy.materials set value []

# registry of all item to substance recipes
data modify storage alchemika:registry metallurgy.recipes.item_in set value []

# registry of all item+substance to item+substance recipes
data modify storage alchemika:registry metallurgy.recipes.item_in_with_material set value []

# other crafting methods
data modify storage alchemika:registry metallurgy.recipes.stir set value [{in1_material_id:"ancient_debris",in2_material_id:"molten_gold",in3_material_id:"acid",in1_material_amount:54,in2_material_amount:108,in3_material_amount:108,out1_material_id:"molten_netherite",out2_material_id:"none",out1_material_amount:36,out2_material_amount:0}]
data modify storage alchemika:registry metallurgy.recipes.stagnate set value []
data modify storage alchemika:registry metallurgy.recipes.passive set value [{in1_material_id:"raw_iron",in2_material_id:"acid",in3_material_id:"none",in1_material_amount:16,in2_material_amount:4,in3_material_amount:0,out1_material_id:"molten_iron",out2_material_id:"none",out1_material_amount:20,out2_material_amount:0},{in1_material_id:"raw_copper",in2_material_id:"acid",in3_material_id:"none",in1_material_amount:16,in2_material_amount:4,in3_material_amount:0,out1_material_id:"molten_copper",out2_material_id:"none",out1_material_amount:20,out2_material_amount:0},{in1_material_id:"raw_gold",in2_material_id:"acid",in3_material_id:"none",in1_material_amount:16,in2_material_amount:4,in3_material_amount:0,out1_material_id:"molten_gold",out2_material_id:"none",out1_material_amount:20,out2_material_amount:0},{in1_material_id:"raw_gold",in2_material_id:"bio_acid",in3_material_id:"dragon_acid",in1_material_amount:16,in2_material_amount:4,in3_material_amount:4,out1_material_id:"molten_gold",out2_material_id:"none",out1_material_amount:24,out2_material_amount:0},{in1_material_id:"raw_iron",in2_material_id:"bio_acid",in3_material_id:"dragon_acid",in1_material_amount:16,in2_material_amount:4,in3_material_amount:4,out1_material_id:"molten_iron",out2_material_id:"none",out1_material_amount:24,out2_material_amount:0},{in1_material_id:"raw_copper",in2_material_id:"bio_acid",in3_material_id:"dragon_acid",in1_material_amount:16,in2_material_amount:4,in3_material_amount:4,out1_material_id:"molten_copper",out2_material_id:"none",out1_material_amount:24,out2_material_amount:0}]
data modify storage alchemika:registry metallurgy.recipes.heat set value []
data modify storage alchemika:registry metallurgy.recipes.chill set value []
data modify storage alchemika:registry metallurgy.recipes.soulburn set value []

# scooping recipes
data modify storage alchemika:registry metallurgy.recipes.scoop set value []
# ingot casting recipes
data modify storage alchemika:registry metallurgy.recipes.ingot_cast set value []

# add registries to base
# function alchemika:load/registry_iterate {source:metallurgy,registry:recipes.stir}
# function alchemika:load/registry_iterate {source:metallurgy,registry:recipes.passive}

data modify storage alchemika:registry recipes.stir append from storage alchemika:registry metallurgy.recipes.stir[]
data modify storage alchemika:registry recipes.passive append from storage alchemika:registry metallurgy.recipes.passive[]