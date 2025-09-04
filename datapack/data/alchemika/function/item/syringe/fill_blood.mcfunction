damage @s 2 alchemika:syringe
scoreboard players add $temp.amount alch.dummy 10
scoreboard players remove $temp.remaining alch.dummy 10
function alchemika:item/syringe/item_op {id:"blood"}