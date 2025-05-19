# registry of all cauldron compatible substances
data modify storage alchemika:registry materials merge value []

# registry of all item to substance recipes
data modify storage alchemika:registry recipes.item_in merge value []

# registry of all item+substance to item+substance recipes
data modify storage alchemika:registry recipes.item_in_with_material merge value []

# other crafting methods
data modify storage alchemika:registry recipes.stir merge value [{in1_material_id:"ancient_debris",in2_material_id:"molten_gold",in3_material_id:"acid",in1_material_amount:54,in2_material_amount:108,in3_material_amount:108,out1_material_id:"molten_netherite",out2_material_id:"none",out1_material_amount:36,out2_material_amount:0}]
data modify storage alchemika:registry recipes.stagnate merge value []
data modify storage alchemika:registry recipes.passive merge value [{in1_material_id:"raw_iron",in2_material_id:"acid",in3_material_id:"none",in1_material_amount:16,in2_material_amount:4,in3_material_amount:0,out1_material_id:"molten_iron",out2_material_id:"none",out1_material_amount:20,out2_material_amount:0},{in1_material_id:"raw_copper",in2_material_id:"acid",in3_material_id:"none",in1_material_amount:16,in2_material_amount:4,in3_material_amount:0,out1_material_id:"molten_copper",out2_material_id:"none",out1_material_amount:20,out2_material_amount:0},{in1_material_id:"raw_gold",in2_material_id:"acid",in3_material_id:"none",in1_material_amount:16,in2_material_amount:4,in3_material_amount:0,out1_material_id:"molten_gold",out2_material_id:"none",out1_material_amount:20,out2_material_amount:0}]
data modify storage alchemika:registry recipes.heat merge value []
data modify storage alchemika:registry recipes.chill merge value []
data modify storage alchemika:registry recipes.soulburn merge value []

# scooping recipes
data modify storage alchemika:registry recipes.scoop merge value []
# ingot casting recipes
data modify storage alchemika:registry recipes.ingot_cast merge value []
