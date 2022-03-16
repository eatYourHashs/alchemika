scoreboard players remove @s alch.lava 999
scoreboard players remove @s alch.total 999
scoreboard players add @s alch.rm_space 999
setblock ~ ~ ~ cauldron
playsound minecraft:entity.generic.extinguish_fire block @a
summon item ~ ~0.5 ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:obsidian",Count:1b}}