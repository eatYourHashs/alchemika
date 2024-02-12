execute if entity @s[tag=alch.custom_cauldron] positioned ~ ~ ~ run kill @e[tag=alch.cauldron_model,limit=1,sort=nearest]
execute if entity @s[tag=alch.custom_cauldron] positioned ~ ~ ~ run kill @e[type=item,nbt={Item:{id:"minecraft:cauldron"}},limit=1,sort=nearest]
execute if entity @s[tag=alch.custom_cauldron] positioned ~ ~ ~ run loot spawn ~ ~ ~ loot alchemika:item/orichalcum_cauldron
kill @s
execute positioned ~ ~ ~ run kill @e[tag=alch.cauldron_interaction,limit=1,sort=nearest]