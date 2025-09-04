tp @s ~ ~1.5 ~ ~ ~
function #alchemika:addon_chemthrower_shoot
scoreboard players operation @s alch.uuid = @p[tag=alch.shooter] alch.uuid