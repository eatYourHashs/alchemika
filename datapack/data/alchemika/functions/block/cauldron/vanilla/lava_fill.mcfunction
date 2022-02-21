execute if score @s alch.rm_space matches 1000.. run function alchemika:block/cauldron/add/lava/1000
execute if score @s alch.rm_space matches ..999 if score @s alch.water matches 1000.. run function alchemika:block/cauldron/craft/obsidian_with_water
function alchemika:block/cauldron/update_visual
setblock ~ ~ ~ cauldron