scoreboard players set $temp.cast alch.dummy 0
execute at @a if score @p alch.uuid = @s alch.uuid run tag @p add alch.shooter
function alchemika:item/chemical_thrower/projectile/cast_step
scoreboard players add @s alch.dummy 1
tag @a[tag=alch.shooter] remove alch.shooter
execute if score @s alch.dummy matches 20.. run kill @s
