scoreboard players remove $temp alch.dummy 1
execute if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/add/charcoal/111
execute if score $temp alch.dummy matches 1.. if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/craft/pure_add/charcoal_recurse