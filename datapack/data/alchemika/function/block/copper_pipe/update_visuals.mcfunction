item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:[],mode:"replace_all"}}
execute if entity @s[tag=alch.east] run item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["east"],mode:"append"}}
execute if entity @s[tag=alch.west] run item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["west"],mode:"append"}}
execute if entity @s[tag=alch.north] run item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["north"],mode:"append"}}
execute if entity @s[tag=alch.south] run item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["south"],mode:"append"}}
execute if entity @s[tag=alch.up] run item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["up"],mode:"append"}}
execute if entity @s[tag=alch.down] run item modify entity @s contents {function:"minecraft:set_custom_model_data",strings:{values:["down"],mode:"append"}}