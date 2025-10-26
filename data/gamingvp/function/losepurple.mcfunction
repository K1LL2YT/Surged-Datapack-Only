scoreboard players set one roundlostrandom 1
scoreboard players set two roundlostrandom 2
scoreboard players set three roundlostrandom 3
scoreboard players set four roundlostrandom 4
execute as @a[tag=GamingGuyPack,team=Purple] store result score @s roundlostrandom run random value 1..4
execute as @a[tag=GamingGuyPack,team=Purple] if score @s roundlostrandom = one roundlostrandom at @s run playsound voicelines:gamingloseone neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=GamingGuyPack,team=Purple] if score @s roundlostrandom = two roundlostrandom at @s run playsound voicelines:gaminglosetwo neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=GamingGuyPack,team=Purple] if score @s roundlostrandom = three roundlostrandom at @s run playsound voicelines:gaminglosethree neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=GamingGuyPack,team=Purple] if score @s roundlostrandom = four roundlostrandom at @s run playsound voicelines:gaminglosefour neutral @s ~ ~ ~ 10000000000 1 1