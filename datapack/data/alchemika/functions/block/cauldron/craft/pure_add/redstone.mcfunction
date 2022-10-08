execute store result score $temp alch.dummy run data get storage alchemika:storage item.Count
function alchemika:block/cauldron/craft/pure_add/redstone_recurse
execute unless score $temp alch.dummy matches 1.. run kill @e[type=item,tag=!smithed.strict,dx=1,dy=0.6,dz=1,limit=1,sort=nearest]
execute store result storage alchemika:storage item.Count byte 1 run scoreboard players get $temp alch.dummy
tag @s add alch.update
tag @a[distance=..5] add alch.input_tutorial_clear