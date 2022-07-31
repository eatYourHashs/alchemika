scoreboard players remove $temp alch.dummy 1
execute if score @s alch.rm_space matches 111.. run function alchemika:block/cauldron/add/raw_gold/111
execute if score $temp alch.dummy matches 1.. run function alchemika:block/cauldron/craft/pure_add/raw_gold_recurse