execute if block ~ ~ ~ powder_snow_cauldron[level=1] if score @s alch.rm_space matches 333.. run function alchemika:block/cauldron/add/powder_snow/333
execute if block ~ ~ ~ powder_snow_cauldron[level=3] if score @s alch.rm_space matches 999.. run function alchemika:block/cauldron/add/powder_snow/999
function alchemika:block/cauldron/update_visual
setblock ~ ~ ~ cauldron