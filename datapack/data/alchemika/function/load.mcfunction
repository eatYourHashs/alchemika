scoreboard objectives add alch.dummy dummy

scoreboard objectives add alch.capacity dummy
scoreboard objectives add alch.used_space dummy
scoreboard objectives add alch.rm_space dummy
scoreboard objectives add alch.interact_timer dummy
scoreboard objectives add alch.potion_red dummy
scoreboard objectives add alch.potion_green dummy
scoreboard objectives add alch.potion_blue dummy

scoreboard objectives add alch.cstick minecraft.used:minecraft.carrot_on_a_stick

scoreboard players set $cons.-100 alch.dummy -100
scoreboard players set $cons.-25 alch.dummy -25
scoreboard players set $cons.-10 alch.dummy -10
scoreboard players set $cons.-5 alch.dummy -5
scoreboard players set $cons.-3 alch.dummy -3
scoreboard players set $cons.-2 alch.dummy -2
scoreboard players set $cons.-1 alch.dummy -1
scoreboard players set $cons.0 alch.dummy 0
scoreboard players set $cons.2 alch.dummy 2
scoreboard players set $cons.3 alch.dummy 3
scoreboard players set $cons.4 alch.dummy 4
scoreboard players set $cons.5 alch.dummy 5
scoreboard players set $cons.6 alch.dummy 6
scoreboard players set $cons.7 alch.dummy 7
scoreboard players set $cons.8 alch.dummy 8
scoreboard players set $cons.9 alch.dummy 9
scoreboard players set $cons.10 alch.dummy 10
scoreboard players set $cons.11 alch.dummy 11
scoreboard players set $cons.13 alch.dummy 13
scoreboard players set $cons.14 alch.dummy 14
scoreboard players set $cons.15 alch.dummy 15
scoreboard players set $cons.16 alch.dummy 16
scoreboard players set $cons.20 alch.dummy 20
scoreboard players set $cons.25 alch.dummy 25
scoreboard players set $cons.30 alch.dummy 30
scoreboard players set $cons.40 alch.dummy 40
scoreboard players set $cons.50 alch.dummy 50
scoreboard players set $cons.60 alch.dummy 60
scoreboard players set $cons.65 alch.dummy 65
scoreboard players set $cons.75 alch.dummy 75
scoreboard players set $cons.80 alch.dummy 80
scoreboard players set $cons.95 alch.dummy 95
scoreboard players set $cons.100 alch.dummy 100
scoreboard players set $cons.110 alch.dummy 110
scoreboard players set $cons.125 alch.dummy 125
scoreboard players set $cons.150 alch.dummy 150
scoreboard players set $cons.160 alch.dummy 160
scoreboard players set $cons.165 alch.dummy 165
scoreboard players set $cons.180 alch.dummy 180
scoreboard players set $cons.200 alch.dummy 200
scoreboard players set $cons.220 alch.dummy 220
scoreboard players set $cons.255 alch.dummy 255
scoreboard players set $cons.256 alch.dummy 256
scoreboard players set $cons.999 alch.dummy 999
scoreboard players set $cons.1000 alch.dummy 1000
scoreboard players set $cons.65536 alch.dummy 65536
scoreboard players set $cons.1048576 alch.dummy 1048576
scoreboard players set $cons.16777216 alch.dummy 16777216

schedule function alchemika:5tick 5t replace
schedule function alchemika:20tick 20t replace
schedule function alchemika:100tick 100t replace

# registry of all cauldron compatible substances
# lines: basic vanilla fluids, vanilla items, metallurgy, alchemy, cooking
data modify storage alchemika:registry materials set value [{id:"potion",red:0,blue:0,green:0,tag:"normal",pure:"null"},{id:"water",red:25,blue:255,green:80,tag:"normal",pure:"null"},{id:"lava",red:200,blue:10,green:75,tag:"hot",pure:"alchemika:block_model/pure/lava"},{id:"powder_snow",red:255,blue:255,green:255,tag:"powder",pure:"alchemika:block_model/pure/powder_snow"},{id:"milk",red:255,blue:255,green:255,tag:"normal",pure:"null"},{id:"honey",red:255,blue:0,green:180,tag:"normal",pure:"alchemika:block_model/pure/honey"},\
{id:"gunpowder",red:125,blue:125,green:125,tag:"powder",pure:"null"},{id:"clay",red:145,blue:180,green:165,tag:"powder",pure:"alchemika:block_model/pure/clay"},{id:"resin",red:250,blue:30,green:100,tag:"powder",pure:"alchemika:block_model/pure/resin"},{id:"glowstone",red:255,blue:0,green:180,tag:"powder",pure:"null"},{id:"blaze_powder",red:245,blue:34,green:111,tag:"powder",pure:"null"},{id:"charcoal",red:25,blue:25,green:25,tag:"powder",pure:"null"},{id:"slime",red:125,blue:125,green:200,tag:"normal",pure:"null"},{id:"red_mushroom",red:252,blue:36,green:3,tag:"powder",pure:"null"},{id:"brown_mushroom",red:150,blue:75,green:100,tag:"powder",pure:"null"},{id:"sculk_fiber",red:10,blue:46,green:36,tag:"powder",pure:"alchemika:block_model/pure/sculk_fiber"},{id:"magma",red:250,blue:30,green:200,tag:"hot",pure:"alchemika:block_model/pure/magma"},{id:"sugar",red:255,blue:255,green:255,tag:"powder",pure:"null"},{id:"beetroot",red:115,blue:45,green:35,tag:"normal",pure:"null"},{id:"cocoa_beans",red:80,blue:17,green:42,tag:"powder",pure:"null"},\
{id:"raw_iron",red:200,blue:100,green:160,tag:"powder",pure:"alchemika:block_model/pure/raw_iron"},{id:"raw_copper",red:100,blue:150,green:180,tag:"powder",pure:"alchemika:block_model/pure/raw_copper"},{id:"raw_gold",red:255,blue:20,green:220,tag:"powder",pure:"alchemika:block_model/pure/raw_gold"},{id:"molten_iron",red:255,blue:65,green:80,tag:"hot",pure:"null"},{id:"molten_gold",red:255,blue:10,green:255,tag:"hot",pure:"null"},{id:"molten_copper",red:255,blue:65,green:125,tag:"hot",pure:"null"},{id:"ancient_debris",red:55,blue:20,green:25,tag:"powder",pure:"alchemika:block_model/pure/ancient_debris"},{id:"molten_netherite",red:65,blue:55,green:55,tag:"hot",pure:"null"},\
{id:"acid",red:0,blue:0,green:255,tag:"normal",pure:"null"},{id:"blood",red:191,blue:19,green:19,tag:"normal",pure:"null"},{id:"salt",red:191,blue:19,green:19,tag:"powder",pure:"null"},{id:"sulfur",red:255,blue:50,green:255,tag:"powder",pure:"null"},{id:"distilled_experience",red:175,blue:40,green:255,tag:"normal",pure:"null"},{id:"cinnabar",red:255,blue:69,green:85,tag:"powder",pure:"null"},{id:"quicksilver",red:140,blue:140,green:140,tag:"hot",pure:"null"}]

# registry of all item to substance recipes
# lines: vanilla items, alchemical items, cooking related
data modify storage alchemika:registry recipes.item_in set value [{id:"minecraft:magma_block",components:{"minecraft:custom_data":{}},material_id:"magma",material_amount:288},{id:"minecraft:magma_cream",components:{"minecraft:custom_data":{}},material_id:"magma",material_amount:72},{id:"minecraft:blaze_powder",components:{"minecraft:custom_data":{}},material_id:"blaze_powder",material_amount:72},{id:"minecraft:sculk",components:{"minecraft:custom_data":{}},material_id:"sculk_fiber",material_amount:72},{id:"minecraft:charcoal",components:{"minecraft:custom_data":{}},material_id:"charcoal",material_amount:72},{id:"minecraft:slime_ball",components:{"minecraft:custom_data":{}},material_id:"slime",material_amount:72},{id:"minecraft:slime_block",components:{"minecraft:custom_data":{}},material_id:"slime",material_amount:648},{id:"minecraft:glowstone_dust",components:{"minecraft:custom_data":{}},material_id:"glowstone",material_amount:72},{id:"minecraft:glowstone",components:{"minecraft:custom_data":{}},material_id:"glowstone",material_amount:288},{id:"minecraft:clay",components:{"minecraft:custom_data":{}},material_id:"clay",material_amount:288},{id:"minecraft:clay_ball",components:{"minecraft:custom_data":{}},material_id:"clay",material_amount:72},{id:"minecraft:raw_iron_block",components:{"minecraft:custom_data":{}},material_id:"raw_iron",material_amount:1296},{id:"minecraft:raw_copper_block",components:{"minecraft:custom_data":{}},material_id:"raw_copper",material_amount:1296},{id:"minecraft:raw_gold_block",components:{"minecraft:custom_data":{}},material_id:"raw_gold",material_amount:1296},{id:"minecraft:raw_iron",components:{"minecraft:custom_data":{}},material_id:"raw_iron",material_amount:144},{id:"minecraft:ancient_debris",components:{"minecraft:custom_data":{}},material_id:"ancient_debris",material_amount:72},{id:"minecraft:raw_copper",components:{"minecraft:custom_data":{}},material_id:"raw_copper",material_amount:144},{id:"minecraft:raw_gold",components:{"minecraft:custom_data":{}},material_id:"raw_gold",material_amount:144},{id:"minecraft:gunpowder",components:{"minecraft:custom_data":{}},material_id:"gunpowder",material_amount:72},{id:"minecraft:resin_clump",components:{"minecraft:custom_data":{}},material_id:"resin",material_amount:72},{id:"minecraft:resin_block",components:{"minecraft:custom_data":{}},material_id:"resin",material_amount:648},{id:"minecraft:red_mushroom",components:{"minecraft:custom_data":{}},material_id:"red_mushroom",material_amount:72},{id:"minecraft:brown_mushroom",components:{"minecraft:custom_data":{}},material_id:"brown_mushroom",material_amount:72},{id:"minecraft:sugar",components:{"minecraft:custom_data":{}},material_id:"sugar",material_amount:72},\
{id:"minecraft:structure_block",components:{"minecraft:custom_data":{alch_dat:{salt:1b}}},material_id:"salt",material_amount:72},{id:"minecraft:structure_block",components:{"minecraft:custom_data":{alch_dat:{cinnabar:1b}}},material_id:"cinnabar",material_amount:72},{id:"minecraft:structure_block",components:{"minecraft:custom_data":{alch_dat:{sulfur:1b}}},material_id:"sulfur",material_amount:72},\
{id:"minecraft:rotten_flesh",components:{"minecraft:custom_data":{}},material_id:"rotten_meat",material_amount:72},{id:"minecraft:beetroot",components:{"minecraft:custom_data":{}},material_id:"beetroot",material_amount:72},{id:"minecraft:cocoa_beans",components:{"minecraft:custom_data":{}},material_id:"cocoa_beans",material_amount:72},{id:"minecraft:structure_block",components:{"minecraft:custom_data":{alch_dat:{mystery_morsel:1b}}},material_id:"mystery_meat",material_amount:72},{id:"minecraft:structure_block",components:{"minecraft:custom_data":{alch_dat:{chocolate:1b}}},material_id:"chocolate",material_amount:72},{id:"minecraft:structure_block",components:{"minecraft:custom_data":{alch_dat:{blaze_spice:1b}}},material_id:"blaze_spice",material_amount:72}]

# registry of all item+substance to item+substance recipes
# lines: vanilla bucketing, pack bucketing, other crafting
data modify storage alchemika:registry recipes.item_in_with_material set value [{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}},in_material_id:"none",in_material_amount:0,loot:"alchemika:vanilla_item/bottle",out_material_id:"water",out_material_amount:333},{id:"minecraft:water_bucket",components:{"minecraft:custom_data":{}},in_material_id:"none",in_material_amount:0,loot:"alchemika:vanilla_item/bucket",out_material_id:"water",out_material_amount:1000},{id:"minecraft:experience_bottle",components:{"minecraft:custom_data":{}},in_material_id:"none",in_material_amount:0,loot:"alchemika:vanilla_item/bottle",out_material_id:"distilled_experience",out_material_amount:7},{id:"minecraft:lava_bucket",components:{"minecraft:custom_data":{}},in_material_id:"none",in_material_amount:0,loot:"alchemika:vanilla_item/bucket",out_material_id:"lava",out_material_amount:1000},{id:"minecraft:powder_snow_bucket",components:{"minecraft:custom_data":{}},in_material_id:"none",in_material_amount:0,loot:"alchemika:vanilla_item/bucket",out_material_id:"powder_snow",out_material_amount:1000},{id:"minecraft:glass_bottle",components:{"minecraft:custom_data":{}},in_material_id:"water",in_material_amount:333,loot:"alchemika:vanilla_item/water_bottle",out_material_id:"none",out_material_amount:0},{id:"minecraft:glass_bottle",components:{"minecraft:custom_data":{}},in_material_id:"distilled_experience",in_material_amount:7,loot:"alchemika:vanilla_item/xp_bottle",out_material_id:"none",out_material_amount:0},{id:"minecraft:bucket",components:{"minecraft:custom_data":{}},in_material_id:"water",in_material_amount:1000,loot:"alchemika:vanilla_item/water_bucket",out_material_id:"none",out_material_amount:0},{id:"minecraft:bucket",components:{"minecraft:custom_data":{}},in_material_id:"lava",in_material_amount:1000,loot:"alchemika:vanilla_item/lava_bucket",out_material_id:"none",out_material_amount:0},{id:"minecraft:bucket",components:{"minecraft:custom_data":{}},in_material_id:"powder_snow",in_material_amount:1000,loot:"alchemika:vanilla_item/powder_snow_bucket",out_material_id:"none",out_material_amount:0},{id:"minecraft:glass_bottle",components:{"minecraft:custom_data":{}},in_material_id:"honey",in_material_amount:333,loot:"alchemika:vanilla_item/honey_bottle",out_material_id:"none",out_material_amount:0},{id:"minecraft:honey_bottle",components:{"minecraft:custom_data":{}},in_material_id:"none",in_material_amount:0,loot:"alchemika:vanilla_item/bottle",out_material_id:"honey",out_material_amount:333},{id:"minecraft:milk_bucket",components:{"minecraft:custom_data":{}},in_material_id:"none",in_material_amount:0,loot:"alchemika:vanilla_item/bucket",out_material_id:"milk",out_material_amount:1000},{id:"minecraft:bucket",components:{"minecraft:custom_data":{}},in_material_id:"milk",in_material_amount:1000,loot:"alchemika:vanilla_item/milk_bucket",out_material_id:"none",out_material_amount:0},{id:"minecraft:bowl",components:{"minecraft:custom_data":{}},in_material_id:"beetroot",in_material_amount:432,loot:"alchemika:vanilla_item/beetroot_soup",out_material_id:"none",out_material_amount:0},{id:"minecraft:beetroot_soup",components:{"minecraft:custom_data":{}},in_material_id:"none",in_material_amount:0,loot:"alchemika:vanilla_item/bowl",out_material_id:"beetroot",out_material_amount:432},\

{id:"minecraft:gold_ingot",components:{"minecraft:custom_data":{}},in_material_id:"clay",in_material_amount:288,loot:"alchemika:item/ingot_cast",out_material_id:"none",out_material_amount:0},{id:"minecraft:copper_ingot",components:{"minecraft:custom_data":{}},in_material_id:"clay",in_material_amount:288,loot:"alchemika:item/ingot_cast",out_material_id:"none",out_material_amount:0},{id:"minecraft:iron_ingot",components:{"minecraft:custom_data":{}},in_material_id:"clay",in_material_amount:288,loot:"alchemika:item/ingot_cast",out_material_id:"none",out_material_amount:0}]

# other crafting methods
data modify storage alchemika:registry recipes.stir set value [{in1_material_id:"water",in2_material_id:"sulfur",in3_material_id:"none",in1_material_amount:36,in2_material_amount:18,in3_material_amount:0,out1_material_id:"acid",out2_material_id:"none",out1_material_amount:18,out2_material_amount:0},{in1_material_id:"charcoal",in2_material_id:"sulfur",in3_material_id:"none",in1_material_amount:18,in2_material_amount:18,in3_material_amount:0,out1_material_id:"gunpowder",out2_material_id:"none",out1_material_amount:36,out2_material_amount:0}]
data modify storage alchemika:registry recipes.stagnate set value [{in1_material_id:"gunpowder",in2_material_id:"none",in3_material_id:"none",in1_material_amount:36,in2_material_amount:0,in3_material_amount:0,out1_material_id:"sulfur",out2_material_id:"charcoal",out1_material_amount:18,out2_material_amount:18}]
data modify storage alchemika:registry recipes.passive set value []
data modify storage alchemika:registry recipes.heat set value [{in1_material_id:"sculk_fiber",in2_material_id:"none",in3_material_id:"none",in1_material_amount:72,in2_material_amount:0,in3_material_amount:0,out1_material_id:"distilled_experience",out2_material_id:"none",out1_material_amount:1,out2_material_amount:0},{in1_material_id:"water",in2_material_id:"none",in3_material_id:"none",in1_material_amount:1,in2_material_amount:0,in3_material_amount:0,out1_material_id:"none",out2_material_id:"none",out1_material_amount:0,out2_material_amount:0},{in1_material_id:"water",in2_material_id:"none",in3_material_id:"none",in1_material_amount:8,in2_material_amount:0,in3_material_amount:0,out1_material_id:"none",out2_material_id:"none",out1_material_amount:0,out2_material_amount:0},{in1_material_id:"cinnabar",in2_material_id:"none",in3_material_id:"none",in1_material_amount:8,in2_material_amount:0,in3_material_amount:0,out1_material_id:"quicksilver",out2_material_id:"sulfur",out1_material_amount:4,out2_material_amount:4},{in1_material_id:"slime",in2_material_id:"blaze_powder",in3_material_id:"none",in1_material_amount:4,in2_material_amount:4,in3_material_amount:0,out1_material_id:"magma",out2_material_id:"none",out1_material_amount:4,out2_material_amount:0},{in1_material_id:"raw_iron",in2_material_id:"none",in3_material_id:"none",in1_material_amount:8,in2_material_amount:0,in3_material_amount:0,out1_material_id:"molten_iron",out2_material_id:"none",out1_material_amount:8,out2_material_amount:0},{in1_material_id:"raw_copper",in2_material_id:"none",in3_material_id:"none",in1_material_amount:8,in2_material_amount:0,in3_material_amount:0,out1_material_id:"molten_copper",out2_material_id:"none",out1_material_amount:8,out2_material_amount:0},{in1_material_id:"raw_gold",in2_material_id:"none",in3_material_id:"none",in1_material_amount:8,in2_material_amount:0,in3_material_amount:0,out1_material_id:"molten_gold",out2_material_id:"none",out1_material_amount:8,out2_material_amount:0}]
data modify storage alchemika:registry recipes.chill set value []
data modify storage alchemika:registry recipes.soulburn set value []

# scooping recipes
# lines: vanilla items, pack items
data modify storage alchemika:registry recipes.scoop set value [{material_id:"blaze_powder",material_amount:72,loot:"alchemika:vanilla_item/blaze_powder"},{material_id:"brown_mushroom",material_amount:72,loot:"alchemika:vanilla_item/brown_mushroom"},{material_id:"red_mushroom",material_amount:72,loot:"alchemika:vanilla_item/red_mushroom"},{material_id:"beetroot",material_amount:72,loot:"alchemika:vanilla_item/beetroot"},{material_id:"rotten_meat",material_amount:72,loot:"alchemika:vanilla_item/rotten_flesh"},{material_id:"slime",material_amount:72,loot:"alchemika:vanilla_item/slime_ball"},{material_id:"gunpowder",material_amount:72,loot:"alchemika:vanilla_item/gunpowder"},{material_id:"charcoal",material_amount:72,loot:"alchemika:vanilla_item/charcoal"},{material_id:"raw_iron",material_amount:144,loot:"alchemika:vanilla_item/raw_iron"},{material_id:"raw_copper",material_amount:144,loot:"alchemika:vanilla_item/raw_copper"},{material_id:"raw_gold",material_amount:144,loot:"alchemika:vanilla_item/raw_gold"},{material_id:"clay",material_amount:72,loot:"alchemika:vanilla_item/clay_ball"},{material_id:"glowstone",material_amount:72,loot:"alchemika:vanilla_item/glowstone_dust"},{material_id:"sugar",material_amount:72,loot:"alchemika:vanilla_item/sugar"},{material_id:"resin",material_amount:72,loot:"alchemika:vanilla_item/resin_clump"},{material_id:"magma",material_amount:72,loot:"alchemika:vanilla_item/magma_cream"},{material_id:"ancient_debris",material_amount:72,loot:"alchemika:vanilla_item/ancient_debris"},{material_id:"cocoa_beans",material_amount:72,loot:"alchemika:vanilla_item/cocoa_beans"},\
{material_id:"salt",material_amount:72,loot:"alchemika:item/salt"},{material_id:"sulfur",material_amount:72,loot:"alchemika:item/sulfur"},{material_id:"cinnabar",material_amount:72,loot:"alchemika:item/cinnabar"}]
# ingot casting recipes
data modify storage alchemika:registry recipes.ingot_cast set value [{material_id:"molten_iron",material_amount:144,loot:"alchemika:vanilla_item/iron_ingot"},{material_id:"molten_gold",material_amount:144,loot:"alchemika:vanilla_item/gold_ingot"},{material_id:"molten_copper",material_amount:144,loot:"alchemika:vanilla_item/copper_ingot"},{material_id:"molten_netherite",material_amount:144,loot:"alchemika:vanilla_item/netherite_ingot"},{material_id:"resin",material_amount:72,loot:"alchemika:vanilla_item/resin_brick"}]

# set modules to active if they're unset
execute unless score $config.module.alchemy alch.dummy matches 0.. run scoreboard players set $config.module.alchemy alch.dummy 1
execute unless score $config.module.metallurgy alch.dummy matches 0.. run scoreboard players set $config.module.metallurgy alch.dummy 1
execute unless score $config.module.cooking alch.dummy matches 0.. run scoreboard players set $config.module.cooking alch.dummy 1
# load modules
execute if score $config.module.alchemy matches 1.. run function alchemika:load/alchemy
execute if score $config.module.metallurgy matches 1.. run function alchemika:load/metallurgy
execute if score $config.module.cooking matches 1.. run function alchemika:load/cooking
# load addons
function #alchemika:addon_registry
