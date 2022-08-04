data modify storage alchemika:storage SelectedItem set from entity @s SelectedItem
scoreboard players set @s alch.cstick 0
execute if data storage alchemika:storage SelectedItem.tag.alch_dat{stirring_rod:1b} run function alchemika:item/stirring_rod/use
execute if data storage alchemika:storage SelectedItem.tag.alch_dat{quartz_stirring_rod:1b} run function alchemika:item/stirring_rod/use
execute if data storage alchemika:storage SelectedItem.tag.alch_dat{ingot_cast:1b} run function alchemika:item/ingot_cast/use