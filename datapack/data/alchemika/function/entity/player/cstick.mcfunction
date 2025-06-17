data modify storage alchemika:storage SelectedItem set from entity @s SelectedItem
scoreboard players set @s alch.cstick 0
execute if data storage alchemika:storage SelectedItem.components."minecraft:custom_data".alch_dat{unidentified_notes:1b} run function alchemika:item/notes/use_1
execute if data storage alchemika:storage SelectedItem.components."minecraft:custom_data".alch_dat{alchemical_notes:1b} run function alchemika:item/notes/use_2
execute if data storage alchemika:storage SelectedItem.components."minecraft:custom_data".alch_dat{alchemical_scrawlings:1b} run function alchemika:item/notes/use_3
execute if data storage alchemika:storage SelectedItem.components."minecraft:custom_data".alch_dat{alchemical_musings:1b} run function alchemika:item/notes/use_4