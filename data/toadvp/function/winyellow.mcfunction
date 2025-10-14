scoreboard players set one roundwinrandom 1
scoreboard players set two roundwinrandom 2
scoreboard players set three roundwinrandom 3
execute as @a[tag=ToadPack,team=Yellow] store result score @s roundwinrandom run random value 1..3
execute as @a[tag=ToadPack,team=Yellow] if score @s roundwinrandom = one roundwinrandom at @s run playsound voicelines:toadwinone neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=ToadPack,team=Yellow] if score @s roundwinrandom = two roundwinrandom at @s run playsound voicelines:toadwintwo neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=ToadPack,team=Yellow] if score @s roundwinrandom = three roundwinrandom at @s run playsound voicelines:toadwinthree neutral @s ~ ~ ~ 10000000000 1 1