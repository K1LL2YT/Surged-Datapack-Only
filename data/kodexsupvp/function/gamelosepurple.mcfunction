scoreboard players set one gamelostrandom 1
scoreboard players set two gamelostrandom 2
scoreboard players set three gamelostrandom 3
scoreboard players set four gamelostrandom 4
execute store result score @s gamelostrandom run random value 1..4
execute if score @s gamelostrandom = one gamelostrandom run playsound voicelines:kodexsupgameloseone neutral @s ~ ~ ~ 10000000000 1 1
execute if score @s gamelostrandom = two gamelostrandom run playsound voicelines:kodexsupgamelosetwo neutral @s ~ ~ ~ 10000000000 1 1
execute if score @s gamelostrandom = three gamelostrandom run playsound voicelines:kodexsupgamelosethree neutral @s ~ ~ ~ 10000000000 1 1
execute if score @s gamelostrandom = four gamelostrandom run playsound voicelines:kodexsupgamelosefour neutral @s ~ ~ ~ 10000000000 1 1