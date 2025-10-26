scoreboard players set one roundwinrandom 1
scoreboard players set two roundwinrandom 2
scoreboard players set three roundwinrandom 3
execute as @a[tag=KillzPack,team=Yellow] store result score @s roundwinrandom run random value 1..3
execute as @a[tag=KillzPack,team=Yellow] if score @s roundwinrandom = one roundwinrandom run playsound voicelines:killzwinone neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KillzPack,team=Yellow] if score @s roundwinrandom = two roundwinrandom run playsound voicelines:killzwintwo neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KillzPack,team=Yellow] if score @s roundwinrandom = three roundwinrandom run playsound voicelines:killzwinthree neutral @s ~ ~ ~ 10000000000 1 1