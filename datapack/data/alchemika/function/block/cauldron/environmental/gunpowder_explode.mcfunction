execute store result score $temp.amount alch.dummy run data get entity @s item.components."minecraft:custom_data".alch_dat.cauldron[{id:"gunpowder"}].amount
scoreboard players operation $temp.amount alch.dummy /= $cons.100 alch.dummy
scoreboard players add $temp.amount alch.dummy 1
setblock ~ ~ ~ air
summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:1,ignited:1b,Tags:["smithed.entity","smithed.strict","alch.explosive_cauldron"],CustomName:'{"text":"a cauldron"}'}
execute store result entity @e[tag=alch.explosive_cauldron,limit=1,sort=nearest] ExplosionRadius byte 1 run scoreboard players get $temp.amount alch.dummy