scoreboard players set @s alch.capacity 2000
scoreboard players set @s alch.rm_space 2000
scoreboard players set @s alch.used_space 0
summon interaction ~ ~ ~ {height:0.52,Tags:["smithed.entity","alch.ticking","alch.cauldron_interaction"]}
summon item_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:dropper",count:1,components:{"minecraft:custom_model_data": 426000}},NoGravity:1b,Tags:["smithed.entity","smithed.strict","alch.cauldron_overlay","alch.ticking"]}