execute as @n[tag=alch.phial_rack_display,limit=4] run function alchemika:block/phial_rack/break_display
kill @n[tag=alch.phial_rack_interaction,limit=4]
playsound minecraft:block.glass.break block @a ~ ~ ~ 1 1
execute if entity @s[tag=alch.phial_rack_normal] run loot spawn ~ ~ ~ loot alchemika:item/phial_rack
execute if entity @s[tag=alch.gilded_phial_rack] run loot spawn ~ ~ ~ loot alchemika:item/gilded_phial_rack
execute if entity @s[tag=alch.plated_phial_rack] run loot spawn ~ ~ ~ loot alchemika:item/plated_phial_rack
execute if entity @s[tag=alch.tempered_phial_rack] run loot spawn ~ ~ ~ loot alchemika:item/tempered_phial_rack
execute if block ~ ~ ~ structure_void run setblock ~ ~ ~ air
kill @s