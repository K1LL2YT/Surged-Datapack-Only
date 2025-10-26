scoreboard players set one gamewinrandom 1
scoreboard players set two gamewinrandom 2
scoreboard players set three gamewinrandom 3
execute store result score @s gamewinrandom run random value 1..3
execute if score @s gamewinrandom = one gamewinrandom run playsound voicelines:gaminggamewinone neutral @s ~ ~ ~ 10000000000 1 1
execute if score @s gamewinrandom = two gamewinrandom run playsound voicelines:gaminggamewintwo neutral @s ~ ~ ~ 10000000000 1 1
execute if score @s gamewinrandom = three gamewinrandom run playsound voicelines:gaminggamewinthree neutral @s ~ ~ ~ 10000000000 1 1