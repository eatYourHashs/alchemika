scoreboard players add $temp.cast alch.dummy 1
tp ^ ^ ^0.1

execute if entity @s[tag=alch.chemthrower_water] run particle splash ~ ~ ~ 0.4 0.4 0.4 0.05 2
execute if entity @s[tag=alch.chemthrower_lava] run particle lava ~ ~ ~ 0.4 0.4 0.4 0.05 1
execute if entity @s[tag=alch.chemthrower_acid] run particle dust{color:[0f,1f,0f],scale:1f} ~ ~ ~ 0.4 0.4 0.4 0 2
execute if entity @s[tag=alch.chemthrower_dragon_acid] run particle dust{color:[1f,0f,0.73f],scale:1f} ~ ~ ~ 0.4 0.4 0.4 0 2
execute if entity @s[tag=alch.chemthrower_dragon_breath] run particle dragon_breath ~ ~ ~ 0.4 0.4 0.4 0.05 2
execute if entity @s[tag=alch.chemthrower_pyrotheum] run particle flame ~ ~ ~ 0.4 0.4 0.4 0.05 2
execute if entity @s[tag=alch.chemthrower_cryofluid] run particle snowflake ~ ~ ~ 0.4 0.4 0.4 0.05 2\
execute if entity @s[tag=alch.chemthrower_milk] run particle entity_effect{color:[1f,1f,1f,0.8f]} ~ ~ ~ 0.4 0.4 0.4 0.05 2
execute if entity @s[tag=alch.chemthrower_slime] run particle item_slime ~ ~ ~ 0.4 0.4 0.4 0.05 2
execute if entity @s[tag=alch.chemthrower_blaze_powder] run particle flame ~ ~ ~ 0.4 0.4 0.4 0.05 2
execute if entity @s[tag=alch.chemthrower_blaze_powder] run particle smoke ~ ~ ~ 0.4 0.4 0.4 0.05 1
execute if entity @s[tag=alch.chemthrower_distilled_experience] run particle dust_color_transition{from_color:[0f,1f,0f],to_color:[0.9f,1f,0.2f],scale:1f} ~ ~ ~ 0.4 0.4 0.4 0.05 2
execute if entity @s[tag=alch.chemthrower_gunpowder] run particle dust{color:[0.2f,0.2f,0.2f],scale:1f} ~ ~ ~ 0.4 0.4 0.4 0 2

execute at @s unless block ~ ~ ~ #alchemika:not_solid run function alchemika:item/chemical_thrower/projectile/block_impact
execute at @s positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[type=!#alchemika:projectile_ignore,tag=!alch.shooter,dx=0.6,dy=0.6,dz=0.6,distance=0.01..10] positioned ~0.3 ~0.3 ~0.3 run function alchemika:item/chemical_thrower/projectile/entity_impact
execute at @s run function #alchemika:addon_chemthrower

execute if entity @s[tag=alch.kill] run scoreboard players set $temp.cast alch.dummy 10
execute if entity @s[tag=alch.kill] run kill @s
execute unless score $temp.cast alch.dummy matches 10.. at @s run function alchemika:item/chemical_thrower/projectile/cast_step