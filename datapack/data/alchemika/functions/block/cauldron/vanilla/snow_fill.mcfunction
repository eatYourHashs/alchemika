execute if block ~ ~ ~ powder_snow_cauldron[level=1] if score @s alch.rm_space matches 333.. run function alchemika:block/cauldron/add/powder_snow/333
execute if block ~ ~ ~ powder_snow_cauldron[level=3] if score @s alch.rm_space matches 1000.. run function alchemika:block/cauldron/add/powder_snow/1000
function alchemika:block/cauldron/update_visual
setblock ~ ~ ~ cauldron