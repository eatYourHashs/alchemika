playsound minecraft:entity.item_frame.remove_item block @a ~ ~ ~ 1 0.5
summon item ~ ~0.5 ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:raw_gold",Count:1b}}
scoreboard players remove @s alch.raw_gold 111
scoreboard players remove @s alch.total 111
scoreboard players add @s alch.rm_space 111
function alchemika:block/cauldron/update_visual