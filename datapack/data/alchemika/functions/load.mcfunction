scoreboard objectives add alch.dummy dummy
scoreboard objectives add alch.total dummy
scoreboard objectives add alch.rm_space dummy
scoreboard objectives add alch.stir_timer dummy
scoreboard objectives add alch.stirs dummy

scoreboard objectives add alch.water dummy
scoreboard objectives add alch.lava dummy
scoreboard objectives add alch.snow dummy
scoreboard objectives add alch.gunpowder dummy
scoreboard objectives add alch.sulfur dummy
scoreboard objectives add alch.nether_wart dummy
scoreboard objectives add alch.acid dummy
scoreboard objectives add alch.potion dummy
scoreboard objectives add alch.charcoal dummy
scoreboard objectives add alch.clay dummy
scoreboard objectives add alch.redstone dummy
scoreboard objectives add alch.glowstone dummy
scoreboard objectives add alch.dragon_breath dummy
scoreboard objectives add alch.raw_iron dummy
scoreboard objectives add alch.raw_gold dummy
scoreboard objectives add alch.raw_copper dummy
scoreboard objectives add alch.molten_iron dummy
scoreboard objectives add alch.molten_gold dummy
scoreboard objectives add alch.molten_copper dummy
scoreboard objectives add alch.molten_orichalcum dummy

scoreboard objectives add alch.cstick minecraft.used:minecraft.carrot_on_a_stick

scoreboard players set $cons.-100 alch.dummy -100
scoreboard players set $cons.-25 alch.dummy -25
scoreboard players set $cons.-10 alch.dummy -10
scoreboard players set $cons.-5 alch.dummy -5
scoreboard players set $cons.-3 alch.dummy -3
scoreboard players set $cons.-2 alch.dummy -2
scoreboard players set $cons.-1 alch.dummy -1
scoreboard players set $cons.2 alch.dummy 2
scoreboard players set $cons.3 alch.dummy 3
scoreboard players set $cons.4 alch.dummy 4
scoreboard players set $cons.5 alch.dummy 5
scoreboard players set $cons.6 alch.dummy 6
scoreboard players set $cons.7 alch.dummy 7
scoreboard players set $cons.8 alch.dummy 8
scoreboard players set $cons.9 alch.dummy 9
scoreboard players set $cons.10 alch.dummy 10
scoreboard players set $cons.11 alch.dummy 11
scoreboard players set $cons.13 alch.dummy 13
scoreboard players set $cons.14 alch.dummy 14
scoreboard players set $cons.15 alch.dummy 15
scoreboard players set $cons.16 alch.dummy 16
scoreboard players set $cons.20 alch.dummy 20
scoreboard players set $cons.25 alch.dummy 25
scoreboard players set $cons.30 alch.dummy 30
scoreboard players set $cons.40 alch.dummy 40
scoreboard players set $cons.50 alch.dummy 50
scoreboard players set $cons.60 alch.dummy 60
scoreboard players set $cons.65 alch.dummy 65
scoreboard players set $cons.75 alch.dummy 75
scoreboard players set $cons.80 alch.dummy 80
scoreboard players set $cons.95 alch.dummy 95
scoreboard players set $cons.100 alch.dummy 100
scoreboard players set $cons.110 alch.dummy 110
scoreboard players set $cons.125 alch.dummy 125
scoreboard players set $cons.150 alch.dummy 150
scoreboard players set $cons.160 alch.dummy 160
scoreboard players set $cons.165 alch.dummy 165
scoreboard players set $cons.180 alch.dummy 180
scoreboard players set $cons.200 alch.dummy 200
scoreboard players set $cons.220 alch.dummy 220
scoreboard players set $cons.255 alch.dummy 255
scoreboard players set $cons.256 alch.dummy 256
scoreboard players set $cons.999 alch.dummy 999
scoreboard players set $cons.65536 alch.dummy 65536
scoreboard players set $cons.1048576 alch.dummy 1048576
scoreboard players set $cons.16777216 alch.dummy 16777216

schedule function alchemika:5tick 5t replace
schedule function alchemika:20tick 20t replace
schedule function alchemika:100tick 100t replace
