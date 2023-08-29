scoreboard objectives add alch.dummy dummy

scoreboard objectives add alch.capacity dummy
scoreboard objectives add alch.used_space dummy
scoreboard objectives add alch.rm_space dummy
scoreboard objectives add alch.interact_timer dummy

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

data modify storage alchemika:registry materials set value [{id:"water",red:25,blue:255,green:80,tag:"normal",pure:0},{id:"lava",red:200,blue:10,green:75,tag:"hot",pure:426001},{id:"powder_snow",red:255,blue:255,green:255,tag:"powder",pure:426002},{id:"gunpowder",red:125,blue:125,green:125,tag:"powder",pure:0},{id:"sulfur",red:255,blue:50,green:255,tag:"powder",pure:0},{id:"acid",red:0,blue:0,green:255,tag:"normal",pure:0},{id:"clay",red:145,blue:180,green:165,tag:"powder",pure:426005},{id:"raw_iron",red:200,blue:100,green:160,tag:"powder",pure:426006},{id:"raw_copper",red:100,blue:150,green:180,tag:"powder",pure:426007},{id:"raw_gold",red:255,blue:20,green:220,tag:"powder",pure:426008},{id:"molten_iron",red:255,blue:65,green:80,tag:"hot",pure:0},{id:"molten_gold",red:255,blue:10,green:255,tag:"hot",pure:0},{id:"molten_copper",red:255,blue:65,green:125,tag:"hot",pure:0},{id:"molten_orichalcum",red:255,blue:40,green:80,tag:"hot",pure:0},{id:"glowstone",red:255,blue:0,green:180,tag:"powder",pure:0},{id:"blood",red:150,blue:0,green:0,tag:"normal",pure:0},{id:"charcoal",red:25,blue:25,green:25,tag:"powder",pure:0}]
data modify storage alchemika:registry recipes.item_in set value [{id:"minecraft:charcoal",tag:{},material_id:"charcoal",material_amount:72},{id:"minecraft:glowstone_dust",tag:{},material_id:"glowstone",material_amount:72},{id:"minecraft:glowstone",tag:{},material_id:"glowstone",material_amount:288},{id:"minecraft:clay",tag:{},material_id:"clay",material_amount:288},{id:"minecraft:clay_ball",tag:{},material_id:"clay",material_amount:72},{id:"minecraft:raw_iron_block",tag:{},material_id:"raw_iron",material_amount:1296},{id:"minecraft:raw_copper_block",tag:{},material_id:"raw_copper",material_amount:1296},{id:"minecraft:raw_gold_block",tag:{},material_id:"raw_gold",material_amount:1296},{id:"minecraft:raw_iron",tag:{},material_id:"raw_iron",material_amount:144},{id:"minecraft:raw_copper",tag:{},material_id:"raw_copper",material_amount:144},{id:"minecraft:raw_gold",tag:{},material_id:"raw_gold",material_amount:144},{id:"minecraft:gunpowder",tag:{},material_id:"gunpowder",material_amount:72},{id:"minecraft:structure_block",tag:{alch_dat:{sulfur:1b}},material_id:"sulfur",material_amount:72}]
data modify storage alchemika:registry recipes.item_in_with_material set value [{id:"minecraft:gold_ingot",tag:{},in_material_id:"clay",in_material_amount:288,loot:"alchemika:items/ingot_cast",out_material_id:"none",out_material_amount:0},{id:"minecraft:copper_ingot",tag:{},in_material_id:"clay",in_material_amount:288,loot:"alchemika:items/ingot_cast",out_material_id:"none",out_material_amount:0},{id:"minecraft:iron_ingot",tag:{},in_material_id:"clay",in_material_amount:288,loot:"alchemika:items/ingot_cast",out_material_id:"none",out_material_amount:0},{id:"minecraft:potion",tag:{Potion:"minecraft:water"},in_material_id:"none",in_material_amount:0,loot:"alchemika:vanilla_items/bottle",out_material_id:"water",out_material_amount:333},{id:"minecraft:water_bucket",tag:{},in_material_id:"none",in_material_amount:0,loot:"alchemika:vanilla_items/bucket",out_material_id:"water",out_material_amount:1000},{id:"minecraft:lava_bucket",tag:{},in_material_id:"none",in_material_amount:0,loot:"alchemika:vanilla_items/bucket",out_material_id:"lava",out_material_amount:1000},{id:"minecraft:powder_snow_bucket",tag:{},in_material_id:"none",in_material_amount:0,loot:"alchemika:vanilla_items/bucket",out_material_id:"powder_snow",out_material_amount:1000},{id:"minecraft:glass_bottle",tag:{},in_material_id:"water",in_material_amount:333,loot:"alchemika:vanilla_items/water_bottle",out_material_id:"none",out_material_amount:0},{id:"minecraft:bucket",tag:{},in_material_id:"water",in_material_amount:1000,loot:"alchemika:vanilla_items/water_bucket",out_material_id:"none",out_material_amount:0},{id:"minecraft:bucket",tag:{},in_material_id:"lava",in_material_amount:1000,loot:"alchemika:vanilla_items/lava_bucket",out_material_id:"none",out_material_amount:0},{id:"minecraft:bucket",tag:{},in_material_id:"powder_snow",in_material_amount:1000,loot:"alchemika:vanilla_items/powder_snow_bucket",out_material_id:"none",out_material_amount:0}]
data modify storage alchemika:registry recipes.stir set value [{in1_material_id:"molten_gold",in2_material_id:"molten_copper",in3_material_id:"glowstone",in1_material_amount:72,in2_material_amount:72,in3_material_amount:36,out1_material_id:"molten_orichalcum",out2_material_id:"none",out1_material_amount:288,out2_material_amount:0},{in1_material_id:"water",in2_material_id:"sulfur",in3_material_id:"none",in1_material_amount:36,in2_material_amount:18,in3_material_amount:0,out1_material_id:"acid",out2_material_id:"none",out1_material_amount:18,out2_material_amount:0},{in1_material_id:"charcoal",in2_material_id:"sulfur",in3_material_id:"none",in1_material_amount:18,in2_material_amount:18,in3_material_amount:0,out1_material_id:"gunpowder",out2_material_id:"none",out1_material_amount:36,out2_material_amount:0}]
data modify storage alchemika:registry recipes.stagnate set value [{in1_material_id:"gunpowder",in2_material_id:"none",in3_material_id:"none",in1_material_amount:36,in2_material_amount:0,in3_material_amount:0,out1_material_id:"sulfur",out2_material_id:"charcoal",out1_material_amount:18,out2_material_amount:18}]
data modify storage alchemika:registry recipes.heat set value [{in1_material_id:"water",in2_material_id:"none",in3_material_id:"none",in1_material_amount:8,in2_material_amount:0,in3_material_amount:0,out1_material_id:"none",out2_material_id:"none",out1_material_amount:0,out2_material_amount:0},{in1_material_id:"raw_iron",in2_material_id:"none",in3_material_id:"none",in1_material_amount:8,in2_material_amount:0,in3_material_amount:0,out1_material_id:"molten_iron",out2_material_id:"none",out1_material_amount:8,out2_material_amount:0},{in1_material_id:"raw_iron",in2_material_id:"none",in3_material_id:"none",in1_material_amount:8,in2_material_amount:0,in3_material_amount:0,out1_material_id:"molten_iron",out2_material_id:"none",out1_material_amount:8,out2_material_amount:0},{in1_material_id:"raw_copper",in2_material_id:"none",in3_material_id:"none",in1_material_amount:8,in2_material_amount:0,in3_material_amount:0,out1_material_id:"molten_copper",out2_material_id:"none",out1_material_amount:8,out2_material_amount:0},{in1_material_id:"raw_gold",in2_material_id:"none",in3_material_id:"none",in1_material_amount:8,in2_material_amount:0,in3_material_amount:0,out1_material_id:"molten_gold",out2_material_id:"none",out1_material_amount:8,out2_material_amount:0}]
data modify storage alchemika:registry recipes.chill set value []
data modify storage alchemika:registry recipes.scoop set value [{material_id:"gunpowder",material_amount:72,loot:"alchemika:vanilla_items/gunpowder"},{material_id:"charcoal",material_amount:72,loot:"alchemika:vanilla_items/charcoal"},{material_id:"sulfur",material_amount:72,loot:"alchemika:items/sulfur"},{material_id:"raw_iron",material_amount:144,loot:"alchemika:vanilla_items/raw_iron"},{material_id:"raw_copper",material_amount:144,loot:"alchemika:vanilla_items/raw_copper"},{material_id:"raw_gold",material_amount:144,loot:"alchemika:vanilla_items/raw_gold"},{material_id:"clay",material_amount:72,loot:"alchemika:vanilla_items/clay_ball"},{material_id:"glowstone",material_amount:72,loot:"alchemika:vanilla_items/glowstone_dust"}]
data modify storage alchemika:registry recipes.ingot_cast set value [{material_id:"molten_iron",material_amount:144,loot:"alchemika:vanilla_items/iron_ingot"},{material_id:"molten_gold",material_amount:144,loot:"alchemika:vanilla_items/gold_ingot"},{material_id:"molten_copper",material_amount:144,loot:"alchemika:vanilla_items/copper_ingot"},{material_id:"molten_orichalcum",material_amount:144,loot:"alchemika:items/orichalcum_ingot"}]
function #alchemika:addon_registry
