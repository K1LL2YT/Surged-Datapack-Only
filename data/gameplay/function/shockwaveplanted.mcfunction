title @a times 0s 3s 1s
title @a title {"text":"ѕʜᴏᴄᴋᴡᴀᴠᴇ ᴀᴄᴛɪᴠᴇ","bold":true,"color":"red"}
stopsound @a
execute as @a if score mapselect mapselect matches 1 at @s run playsound minecraft:ost.planted voice @s ~ ~ ~ 0.1
execute as @a if score mapselect mapselect matches 2 at @s run playsound minecraft:ost.planted voice @s ~ ~ ~ 0.1
execute as @a if score mapselect mapselect matches 3 at @s run playsound minecraft:ost.doorsplanted voice @s ~ ~ ~ 0.1
execute as @a if score mapselect mapselect matches 4 at @s run playsound minecraft:ost.hurryupfull voice @s ~ ~ ~ 0.1
execute as @a if score mapselect mapselect matches 5 at @s run playsound minecraft:ost.planted voice @s ~ ~ ~ 0.1
execute as @a at @s run playsound minecraft:sfx.neworder voice @s ~ ~ ~
scoreboard players set bombsound bomb 20
scoreboard players set round round 1000
scoreboard players set #timer time 50
function timer:start

execute as @a[tag=KillzPack] at @s run function killzvp:shockwave
execute as @a[tag=DefaultPack] at @s run function defaultvp:shockwave
execute as @a[tag=ToadPack] at @s run function toadvp:shockwave
execute as @a[tag=KodexSarPack] at @s run function kodexsarvp:shockwave
execute as @a[tag=KodexSupPack] at @s run function kodexsupvp:shockwave