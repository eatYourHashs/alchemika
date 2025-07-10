scoreboard players remove $temp.amount alch.dummy 1
scoreboard players add $temp.remaining alch.dummy 1
execute if score $temp.amount alch.dummy matches 1.. run scoreboard players add $temp.remaining alch.dummy 1
execute if score $temp.amount alch.dummy matches 1.. run scoreboard players remove $temp.amount alch.dummy 1
$summon marker ~ ~ ~ {Tags:["alch.ticking","smithed.entity","alch.chemthrower","alch.chemthrower_$(id)","alch.new"]}
execute at @s as @n[type=marker,tag=alch.new] run function alchemika:item/chemical_thrower/shoot_as
tag @n[type=marker,tag=alch.new] remove alch.new
$function alchemika:item/chemical_thrower/item_op {id:$(id)}