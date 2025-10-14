scoreboard players set one roundwinrandom 1
scoreboard players set two roundwinrandom 2
scoreboard players set three roundwinrandom 3
scoreboard players set four roundwinrandom 4
execute as @a[tag=KodexSupPack,team=Yellow] store result score @s roundwinrandom run random value 1..4
execute as @a[tag=KodexSupPack,team=Yellow] if score @s roundwinrandom = one roundwinrandom at @s run playsound voicelines:kodexsupwinone neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KodexSupPack,team=Yellow] if score @s roundwinrandom = two roundwinrandom at @s run playsound voicelines:kodexsupwintwo neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KodexSupPack,team=Yellow] if score @s roundwinrandom = three roundwinrandom at @s run playsound voicelines:kodexsupwinthree neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KodexSupPack,team=Yellow] if score @s roundwinrandom = three roundwinrandom at @s run playsound voicelines:kodexsupwinfour neutral @s ~ ~ ~ 10000000000 1 1