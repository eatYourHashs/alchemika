xp add @s -10 points
playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 0.7
scoreboard players add $temp.amount alch.dummy 10
scoreboard players remove $temp.remaining alch.dummy 10
function alchemika:item/syringe/item_op {id:"distilled_experience"}