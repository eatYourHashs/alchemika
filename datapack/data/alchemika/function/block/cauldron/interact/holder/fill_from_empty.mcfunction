$scoreboard players set $temp.cauldron_amount alch.dummy $(amount)
scoreboard players operation $temp.item_amount alch.dummy = $temp.cauldron_amount alch.dummy
execute if score $temp.item_amount matches