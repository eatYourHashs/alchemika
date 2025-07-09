xp add @s -20 points
playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 0.7
scoreboard players add $temp.amount alch.dummy 20
scoreboard players remove $temp.remaining alch.dummy 20
function alchemika:item/syringe/item_op {id:"distilled_experience"}