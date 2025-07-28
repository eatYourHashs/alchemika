execute unless entity @s[tag=alch.processed] run function alchemika:entity/player/process
execute unless score @s alch.version >= $version alch.version run function alchemika:entity/player/update