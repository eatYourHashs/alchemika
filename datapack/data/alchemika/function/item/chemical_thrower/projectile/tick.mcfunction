scoreboard players set $temp.cast alch.dummy 0
function alchemika:item/chemical_thrower/projectile/cast_step
scoreboard players add @s alch.dummy 1
execute if score @s alch.dummy matches 20.. run kill @s
