$data modify storage alchemika:registry $(registry) append from storage alchemika:registry $(source).$(registry)[0]
$data remove storage alchemika:registry $(source).$(registry)[0]
$execute store result score $temp.iter alch.dummy run data get storage alchemika:registry $(source).$(registry)
$execute unless score $temp.iter alch.dummy matches ..0 run function alchemika:load/registry_iterate {source:$(source),registry:$(registry)}