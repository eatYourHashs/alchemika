#data modify storage alchemika:storage SelectedItem set from entity @s SelectedItem
#scoreboard players set @s alch.cstick 0
#execute if data storage alchemika:storage SelectedItem.tag.alch_dat{stirring_rod:1b} run function alchemika:item/stirring_rod/use