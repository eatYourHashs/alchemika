scoreboard players remove @s alch.water 1000
scoreboard players remove @s alch.total 1000
scoreboard players add @s alch.rm_space 1000
setblock ~ ~ ~ cauldron
playsound minecraft:entity.generic.extinguish_fire block @a
summon item ~ ~0.5 ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:obsidian",Count:1b}}