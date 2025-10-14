scoreboard players set one gamewinrandom 1
scoreboard players set two gamewinrandom 2
scoreboard players set three gamewinrandom 3
scoreboard players set three gamewinrandom 4
execute as @a[tag=KodexSupPack,team=Purple] store result score @s gamewinrandom run random value 1..4
execute as @a[tag=KodexSupPack,team=Purple] if score @s gamewinrandom = one gamewinrandom at @s run playsound voicelines:kodexsupgamewinone neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KodexSupPack,team=Purple] if score @s gamewinrandom = two gamewinrandom at @s run playsound voicelines:kodexsupgamewintwo neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KodexSupPack,team=Purple] if score @s gamewinrandom = three gamewinrandom at @s run playsound voicelines:kodexsupgamewinthree neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KodexSupPack,team=Purple] if score @s gamewinrandom = four gamewinrandom at @s run playsound voicelines:kodexsupgamewinfour neutral @s ~ ~ ~ 10000000000 1 1