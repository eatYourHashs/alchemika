execute if score @s alch.gunpowder matches ..332 run summon creeper ~ ~ ~ {Silent:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b,CustomName:'{"text":"a cauldron"}'}
execute if score @s alch.gunpowder matches 333..665 run summon creeper ~ ~ ~ {Silent:1b,NoAI:1b,ExplosionRadius:3b,Fuse:0,ignited:1b,CustomName:'{"text":"a cauldron"}'}
execute if score @s alch.gunpowder matches 666..998 run summon creeper ~ ~ ~ {Silent:1b,NoAI:1b,ExplosionRadius:4b,Fuse:0,ignited:1b,CustomName:'{"text":"a cauldron"}'}
execute if score @s alch.gunpowder matches 999.. run summon creeper ~ ~ ~ {Silent:1b,NoAI:1b,ExplosionRadius:5b,Fuse:0,ignited:1b,CustomName:'{"text":"a cauldron"}'}
setblock ~ ~ ~ air
function alchemika:block/cauldron/break
