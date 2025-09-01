data modify storage alchemika:registry alchemy set value {materials:[],recipes:{item_in:[],item_in_with_material:[],stir:[],stagnate:[],passive:[],heat:[],chill:[],soulburn:[],scoop:[],ingot_cast:[]}}
# registry of all cauldron compatible substances
data modify storage alchemika:registry alchemy.materials set value [{id:"molten_orichalcum",red:255,blue:40,green:80,tag:"hot",pure:"null"},{id:"alkaline_base",red:170,blue:190,green:180,tag:"normal",pure:"null"},{id:"pyrotheum",red:255,blue:0,green:95,tag:"hot",pure:"null"},{id:"cryofluid",red:133,blue:255,green:255,tag:"normal",pure:"null"},{id:"propellant",red:255,blue:60,green:60,tag:"normal",pure:"null"}]

# registry of all item to substance recipes
data modify storage alchemika:registry alchemy.recipes.item_in set value []

# registry of all item+substance to item+substance recipes
data modify storage alchemika:registry alchemy.recipes.item_in_with_material set value [{id:"minecraft:oxidized_copper",components:{"minecraft:custom_data":{}},in_material_id:"water",in_material_amount:72,loot:"alchemika:empty",out_material_id:"alkaline_base",out_material_amount:72},{id:"minecraft:blue_ice",components:{"minecraft:custom_data":{}},in_material_id:"alkaline_base",in_material_amount:72,loot:"alchemika:empty",out_material_id:"cryofluid",out_material_amount:72},{id:"minecraft:fire_charge",components:{"minecraft:custom_data":{}},in_material_id:"alkaline_base",in_material_amount:72,loot:"alchemika:empty",out_material_id:"pyrotheum",out_material_amount:72},{id:"minecraft:glass",components:{"minecraft:custom_data":{}},in_material_id:"quicksilver",in_material_amount:72,loot:"alchemika:item/mercurial_glass",out_material_id:"none",out_material_amount:0}]

# other crafting methods
data modify storage alchemika:registry alchemy.recipes.stir set value [{in1_material_id:"molten_gold",in2_material_id:"molten_copper",in3_material_id:"glowstone",in1_material_amount:72,in2_material_amount:72,in3_material_amount:36,out1_material_id:"molten_orichalcum",out2_material_id:"none",out1_material_amount:144,out2_material_amount:0},{in1_material_id:"molten_iron",in2_material_id:"water",in3_material_id:"salt",in1_material_amount:72,in2_material_amount:72,in3_material_amount:36,out1_material_id:"alkaline_base",out2_material_id:"none",out1_material_amount:144,out2_material_amount:0}]
data modify storage alchemika:registry alchemy.recipes.stagnate set value []
data modify storage alchemika:registry alchemy.recipes.passive set value [{in1_material_id:"alkaline_base",in2_material_id:"acid",in3_material_id:"none",in1_material_amount:1,in2_material_amount:1,in3_material_amount:0,out1_material_id:"water",out2_material_id:"none",out1_material_amount:2,out2_material_amount:0},{in1_material_id:"alkaline_base",in2_material_id:"bio_acid",in3_material_id:"none",in1_material_amount:1,in2_material_amount:1,in3_material_amount:0,out1_material_id:"water",out2_material_id:"none",out1_material_amount:2,out2_material_amount:0},{in1_material_id:"alkaline_base",in2_material_id:"dragon_acid",in3_material_id:"none",in1_material_amount:1,in2_material_amount:1,in3_material_amount:0,out1_material_id:"water",out2_material_id:"none",out1_material_amount:2,out2_material_amount:0}]
data modify storage alchemika:registry alchemy.recipes.heat set value []
data modify storage alchemika:registry alchemy.recipes.chill set value [{in1_material_id:"bio_acid",in2_material_id:"cryofluid",in3_material_id:"none",in1_material_amount:1,in2_material_amount:1,in3_material_amount:0,out1_material_id:"propellant",out2_material_id:"water",out1_material_amount:1,out2_material_amount:1}]
data modify storage alchemika:registry alchemy.recipes.soulburn set value []

# scooping recipes
data modify storage alchemika:registry alchemy.recipes.scoop set value []
# ingot casting recipes
data modify storage alchemika:registry alchemy.recipes.ingot_cast set value [{material_id:"molten_orichalcum",material_amount:144,loot:"alchemika:item/orichalcum_ingot"}]

# add registries to base
# function alchemika:load/registry_iterate {source:alchemy,registry:materials}
# function alchemika:load/registry_iterate {source:alchemy,registry:recipes.stir}
# function alchemika:load/registry_iterate {source:alchemy,registry:recipes.ingot_cast}

data modify storage alchemika:registry materials append from storage alchemika:registry alchemy.materials[]
data modify storage alchemika:registry recipes.item_in_with_material append from storage alchemika:registry alchemy.recipes.item_in_with_material[]
data modify storage alchemika:registry recipes.passive append from storage alchemika:registry alchemy.recipes.passive[]
data modify storage alchemika:registry recipes.stir append from storage alchemika:registry alchemy.recipes.stir[]
data modify storage alchemika:registry recipes.chill append from storage alchemika:registry alchemy.recipes.chill[]
data modify storage alchemika:registry recipes.ingot_cast append from storage alchemika:registry alchemy.recipes.ingot_cast[]
