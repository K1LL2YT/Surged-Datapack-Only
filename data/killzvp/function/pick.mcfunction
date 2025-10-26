scoreboard players set one pickrandom 1
scoreboard players set two pickrandom 2
scoreboard players set three pickrandom 3
scoreboard players set four pickrandom 4
execute as @p[tag=KillzPack] store result score @s pickrandom run random value 1..4
execute as @p[tag=KillzPack] if score @s pickrandom = one pickrandom run playsound voicelines:killzpickone neutral @s ~ ~ ~ 10000000000 1 1
execute as @p[tag=KillzPack] if score @s pickrandom = two pickrandom run playsound voicelines:killzpicktwo neutral @s ~ ~ ~ 10000000000 1 1
execute as @p[tag=KillzPack] if score @s pickrandom = three pickrandom run playsound voicelines:killzpickthree neutral @s ~ ~ ~ 10000000000 1 1
execute as @p[tag=KillzPack] if score @s pickrandom = four pickrandom run playsound voicelines:killzpickfour neutral @s ~ ~ ~ 10000000000 1 1