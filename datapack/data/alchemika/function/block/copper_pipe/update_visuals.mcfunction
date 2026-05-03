item modify entity @s contents {function:"minecraft:set_custom_model_data",flags:{values:[0b,0b,0b,0b,0b,0b],mode:"replace_all"}}
execute if entity @s[tag=alch.east] run item modify entity @s contents {function:"minecraft:set_custom_model_data",flags:{values:[1b],mode:"replace_section",offset:0}}
execute if entity @s[tag=alch.west] run item modify entity @s contents {function:"minecraft:set_custom_model_data",flags:{values:[1b],mode:"replace_section",offset:1}}
execute if entity @s[tag=alch.north] run item modify entity @s contents {function:"minecraft:set_custom_model_data",flags:{values:[1b],mode:"replace_section",offset:2}}
execute if entity @s[tag=alch.south] run item modify entity @s contents {function:"minecraft:set_custom_model_data",flags:{values:[1b],mode:"replace_section",offset:3}}
execute if entity @s[tag=alch.up] run item modify entity @s contents {function:"minecraft:set_custom_model_data",flags:{values:[1b],mode:"replace_section",offset:4}}
execute if entity @s[tag=alch.down] run item modify entity @s contents {function:"minecraft:set_custom_model_data",flags:{values:[1b],mode:"replace_section",offset:5}}