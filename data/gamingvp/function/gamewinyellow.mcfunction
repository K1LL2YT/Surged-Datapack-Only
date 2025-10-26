scoreboard players set one gamewinrandom 1
scoreboard players set two gamewinrandom 2
scoreboard players set three gamewinrandom 3
execute as @a[tag=GamingGuyPack,team=Yellow] store result score @s gamewinrandom run random value 1..3
execute as @a[tag=GamingGuyPack,team=Yellow] if score @s gamewinrandom = one gamewinrandom at @s run playsound voicelines:gaminggamewinone neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=GamingGuyPack,team=Yellow] if score @s gamewinrandom = two gamewinrandom at @s run playsound voicelines:gaminggamewintwo neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=GamingGuyPack,team=Yellow] if score @s gamewinrandom = three gamewinrandom at @s run playsound voicelines:gaminggamewinthree neutral @s ~ ~ ~ 10000000000 1 1