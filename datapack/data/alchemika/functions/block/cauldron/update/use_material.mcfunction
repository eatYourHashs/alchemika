execute store result score $temp.amount alch.dummy run data get storage alchemika:storage temp.cauldron[0].amount
execute if score $temp.amount alch.dummy = @s alch.used_space run tag @s add alch.pure
$execute unless score $cons.0 alch.dummy matches $(pure) run data modify entity @s item.tag.CustomModelData set value $(pure)
$tag @s add alch.$(tag)