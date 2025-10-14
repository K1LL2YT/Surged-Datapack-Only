scoreboard players set one pickrandom 1
scoreboard players set two pickrandom 2
scoreboard players set three pickrandom 3
scoreboard players set four pickrandom 4
execute as @a[tag=KodexSarPack] store result score @s pickrandom run random value 1..4
execute as @a[tag=KodexSarPack] if score @s pickrandom = one pickrandom at @s run playsound voicelines:kodexsarpickone neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KodexSarPack] if score @s pickrandom = two pickrandom at @s run playsound voicelines:kodexsarpicktwo neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KodexSarPack] if score @s pickrandom = three pickrandom at @s run playsound voicelines:kodexsarpickthree neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KodexSarPack] if score @s pickrandom = four pickrandom at @s run playsound voicelines:kodexsarpickfour neutral @s ~ ~ ~ 10000000000 1 1