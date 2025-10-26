scoreboard players set one roundlostrandom 1
scoreboard players set two roundlostrandom 2
scoreboard players set three roundlostrandom 3
scoreboard players set four roundlostrandom 4
execute store result score @s roundlostrandom run random value 1..4
execute if score @s roundlostrandom = one roundlostrandom run playsound voicelines:gamingloseone neutral @s ~ ~ ~ 10000000000 1 1
execute if score @s roundlostrandom = two roundlostrandom run playsound voicelines:gaminglosetwo neutral @s ~ ~ ~ 10000000000 1 1
execute if score @s roundlostrandom = three roundlostrandom run playsound voicelines:gaminglosethree neutral @s ~ ~ ~ 10000000000 1 1
execute if score @s roundlostrandom = four roundlostrandom run playsound voicelines:gaminglosefour neutral @s ~ ~ ~ 10000000000 1 1