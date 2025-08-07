tag @s add alch.kill
execute if entity @s[tag=alch.chemthrower_gunpowder] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,equipment:{chest:{id:"minecraft:stone",count:1,components:{enchantments:{"alchemika:technical/explosion":2}}}}}
execute if entity @s[tag=alch.chemthrower_distilled_experience] run summon minecraft:experience_orb ~ ~ ~ {Value:4}
execute if entity @s[tag=alch.chemthrower_water] positioned ^ ^ ^-0.1 if block ~ ~ ~ #alchemika:replaceable run setblock ~ ~ ~ water destroy
execute if entity @s[tag=alch.chemthrower_lava] positioned ^ ^ ^-0.1 if predicate alchemika:random/one_twentieth if block ~ ~ ~ #alchemika:replaceable run setblock ~ ~ ~ lava destroy
execute if entity @s[tag=alch.chemthrower_cryofluid] if block ~ ~ ~ water run setblock ~ ~ ~ ice
execute if entity @s[tag=alch.chemthrower_pyrotheum] positioned ^ ^ ^-0.1 if block ~ ~ ~ #alchemika:replaceable run setblock ~ ~ ~ fire destroy