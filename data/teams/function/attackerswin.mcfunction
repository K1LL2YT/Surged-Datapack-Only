schedule clear teams:attackerswin
schedule clear teams:defenderswin

# Title
title @a times 0s 2s 1s
title @a title {"text":"Attacker Win","bold":true,"color":"yellow"}
title @a subtitle {"text":"ɢᴇᴛ ʀᴇᴀᴅʏ ꜰᴏʀ ᴛʜᴇ ɴᴇxᴛ ʀᴏᴜɴᴅ...","bold":true,"color":"gray"}
# SFX
execute as @a[team=Yellow] at @s run playsound minecraft:sfx.success record @s ~ ~ ~ 0.5
execute as @a[team=Purple] at @s run playsound minecraft:sfx.fail record @s ~ ~ ~ 0.5

# Functionality for Game
scoreboard players add Yellow Wins 1
kill @e[tag=bomb]
schedule function ui:fadeui 4s append
schedule function gameplay:gamesetup 5s append
scoreboard players set bomb bomb 0
schedule function gameplay:winner 3s append
clear @a[team=!Admin]
kill @e[type=item,name="Carrot on a Stick"]
kill @e[tag=Yellowrecontower]
kill @e[tag=Purplerecontower]
scoreboard players set @a killstreak 0

execute as @a[team=Yellow,tag=KillzPack] at @s run function killzvp:winyellow
execute as @a[team=Purple,tag=KillzPack] at @s run function killzvp:losepurple

execute as @a[team=Yellow,tag=DefaultPack] at @s run function defaultvp:winyellow
execute as @a[team=Purple,tag=DefaultPack] at @s run function defaultvp:losepurple

execute as @a[team=Yellow,tag=ToadPack] at @s run function toadvp:winyellow
execute as @a[team=Purple,tag=ToadPack] at @s run function toadvp:losepurple

execute as @a[team=Yellow,tag=KodexSarPack] at @s run function kodexsarvp:winyellow
execute as @a[team=Purple,tag=KodexSarPack] at @s run function kodexsarvp:losepurple

execute as @a[team=Yellow,tag=KodexSupPack] at @s run function kodexsupvp:winyellow
execute as @a[team=Purple,tag=KodexSupPack] at @s run function kodexsupvp:losepurple

execute as @a[team=Yellow,tag=GamingGuyPack] at @s run function gamingvp:winyellow
execute as @a[team=Purple,tag=GamingGuyPack] at @s run function gamingvp:losepurple