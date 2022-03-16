execute if score @s alch.rm_space matches 999.. run function alchemika:block/cauldron/add/lava/999
execute if score @s alch.rm_space matches ..998 if score @s alch.water matches 999.. run function alchemika:block/cauldron/craft/obsidian_with_water
function alchemika:block/cauldron/update_visual
setblock ~ ~ ~ cauldron