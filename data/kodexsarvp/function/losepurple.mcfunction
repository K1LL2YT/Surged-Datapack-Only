scoreboard players set one roundlostrandom 1
scoreboard players set two roundlostrandom 2
scoreboard players set three roundlostrandom 3
scoreboard players set four roundlostrandom 4
execute store result score @s roundlostrandom run random value 1..4
execute if score @s roundlostrandom = one roundlostrandom run playsound voicelines:kodexsarloseone neutral @s ~ ~ ~ 10000000000 1 1
execute if score @s roundlostrandom = two roundlostrandom run playsound voicelines:kodexsarlosetwo neutral @s ~ ~ ~ 10000000000 1 1
execute if score @s roundlostrandom = three roundlostrandom run playsound voicelines:kodexsarlosethree neutral @s ~ ~ ~ 10000000000 1 1
execute if score @s roundlostrandom = four roundlostrandom run playsound voicelines:kodexsarlosefour neutral @s ~ ~ ~ 10000000000 1 1