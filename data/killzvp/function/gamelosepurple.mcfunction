scoreboard players set one gamelostrandom 1
scoreboard players set two gamelostrandom 2
scoreboard players set three gamelostrandom 3
scoreboard players set four gamelostrandom 4
execute as @a[tag=KillzPack,team=Purple] store result score @s gamelostrandom run random value 1..4
execute as @a[tag=KillzPack,team=Purple] if score @s gamelostrandom = one gamelostrandom at @s run playsound voicelines:killzgameloseone neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KillzPack,team=Purple] if score @s gamelostrandom = two gamelostrandom at @s run playsound voicelines:killzgamelosetwo neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KillzPack,team=Purple] if score @s gamelostrandom = three gamelostrandom at @s run playsound voicelines:killzgamelosethree neutral @s ~ ~ ~ 10000000000 1 1
execute as @a[tag=KillzPack,team=Purple] if score @s gamelostrandom = four gamelostrandom at @s run playsound voicelines:killzgamelosefour neutral @s ~ ~ ~ 10000000000 1 1