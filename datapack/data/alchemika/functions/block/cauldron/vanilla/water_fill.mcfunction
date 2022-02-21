execute if block ~ ~ ~ water_cauldron[level=1] if score @s alch.rm_space matches 333.. run function alchemika:block/cauldron/add/water/333
execute if block ~ ~ ~ water_cauldron[level=3] if score @s alch.rm_space matches 1000.. run function alchemika:block/cauldron/add/water/1000
execute if block ~ ~ ~ water_cauldron[level=3] if score @s alch.rm_space matches ..999 if score @s alch.lava matches 1000.. run function alchemika:block/cauldron/craft/obsidian_with_lava
function alchemika:block/cauldron/update_visual
setblock ~ ~ ~ cauldron