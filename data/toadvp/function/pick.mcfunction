scoreboard players set one pickrandom 1
scoreboard players set two pickrandom 2
scoreboard players set three pickrandom 3
scoreboard players set four pickrandom 4
execute as @p[tag=ToadPack] store result score @s pickrandom run random value 1..4
execute as @p[tag=ToadPack] if score @s pickrandom = one pickrandom at @s run playsound voicelines:toadpickone neutral @s ~ ~ ~ 10000000000 1 1
execute as @p[tag=ToadPack] if score @s pickrandom = two pickrandom at @s run playsound voicelines:toadpicktwo neutral @s ~ ~ ~ 10000000000 1 1
execute as @p[tag=ToadPack] if score @s pickrandom = three pickrandom at @s run playsound voicelines:toadpickthree neutral @s ~ ~ ~ 10000000000 1 1
execute as @p[tag=ToadPack] if score @s pickrandom = four pickrandom at @s run playsound voicelines:toadpickfour neutral @s ~ ~ ~ 10000000000 1 1