playsound minecraft:entity.item_frame.remove_item block @a ~ ~ ~ 1 0.5
loot spawn ~ ~0.7 ~ loot alchemika:items/sulfur
execute positioned ~ ~0.7 ~ run data modify entity @e[type=item,sort=nearest,limit=1] Motion set value [0.0,0.5,0.0]
scoreboard players remove @s alch.sulfur 111
scoreboard players remove @s alch.total 111
scoreboard players add @s alch.rm_space 111
function alchemika:block/cauldron/update_visual