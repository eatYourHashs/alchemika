function alchemika:block/cauldron/interact/heat/check
execute if data entity @s item.tag.alch_dat.cauldron[{id:"gunpowder"}] run function alchemika:block/cauldron/environmental/gunpowder_explode