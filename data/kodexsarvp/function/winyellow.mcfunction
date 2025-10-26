scoreboard players set one roundwinrandom 1
scoreboard players set two roundwinrandom 2
scoreboard players set three roundwinrandom 3
scoreboard players set four roundwinrandom 4
execute store result score @s roundwinrandom run random value 1..4
execute if score @s roundwinrandom = one roundwinrandom run playsound voicelines:kodexsarwinone neutral @s ~ ~ ~ 10000000000 1 1
execute if score @s roundwinrandom = two roundwinrandom run playsound voicelines:kodexsarwintwo neutral @s ~ ~ ~ 10000000000 1 1
execute if score @s roundwinrandom = three roundwinrandom run playsound voicelines:kodexsarwinthree neutral @s ~ ~ ~ 10000000000 1 1
execute if score @s roundwinrandom = three roundwinrandom run playsound voicelines:kodexsarwinfour neutral @s ~ ~ ~ 10000000000 1 1