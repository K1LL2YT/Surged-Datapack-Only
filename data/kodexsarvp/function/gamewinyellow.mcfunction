scoreboard players set one gamewinrandom 1
scoreboard players set two gamewinrandom 2
scoreboard players set three gamewinrandom 3
scoreboard players set four gamewinrandom 4
execute as @a[tag=KodexSarPack,team=Yellow] store result score @s gamewinrandom run random value 1..4
execute as @a[tag=KodexSarPack,team=Yellow] if score @s gamewinrandom = one gamewinrandom at @s run playsound voicelines:kodexsargamewinone neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KodexSarPack,team=Yellow] if score @s gamewinrandom = two gamewinrandom at @s run playsound voicelines:kodexsargamewintwo neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KodexSarPack,team=Yellow] if score @s gamewinrandom = three gamewinrandom at @s run playsound voicelines:kodexsargamewinthree neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KodexSarPack,team=Yellow] if score @s gamewinrandom = four gamewinrandom at @s run playsound voicelines:kodexsargamewinfour neutral @s ~ ~ ~ 10000000000 1 1