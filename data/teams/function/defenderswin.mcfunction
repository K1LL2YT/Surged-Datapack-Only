schedule clear teams:attackerswin
schedule clear teams:defenderswin

# Title
title @a times 0s 2s 1s
title @a title {"text":"Defenders Win","bold":true,"color":"dark_purple"}
title @a subtitle {"text":"ɢᴇᴛ ʀᴇᴀᴅʏ ꜰᴏʀ ᴛʜᴇ ɴᴇxᴛ ʀᴏᴜɴᴅ...","bold":true,"color":"gray"}
# SFX
execute as @a[team=Purple] at @s run playsound minecraft:sfx.success record @s ~ ~ ~ 0.5
execute as @a[team=Yellow] at @s run playsound minecraft:sfx.fail record @s ~ ~ ~ 0.5

# Functionality for Game
scoreboard players add Purple Wins 1
schedule function ui:fadeui 4s append
schedule function gameplay:gamesetup 5s append
scoreboard players set bomb bomb 0
schedule function gameplay:winner 3s append
clear @a[team=!Admin]
kill @e[type=item,name="Carrot on a Stick"]
kill @e[tag=Yellowrecontower]
kill @e[tag=Purplerecontower]
scoreboard players set @a killstreak 0

execute as @a[team=Yellow,tag=KillzPack] at @s run function killzvp:loseyellow
execute as @a[team=Purple,tag=KillzPack] at @s run function killzvp:winpurple

execute as @a[team=Yellow,tag=DefaultPack] at @s run function defaultvp:loseyellow
execute as @a[team=Purple,tag=DefaultPack] at @s run function defaultvp:winpurple

execute as @a[team=Yellow,tag=ToadPack] at @s run function toadvp:loseyellow
execute as @a[team=Purple,tag=ToadPack] at @s run function toadvp:winpurple

execute as @a[team=Yellow,tag=KodexSarPack] at @s run function kodexsarvp:loseyellow
execute as @a[team=Purple,tag=KodexSarPack] at @s run function kodexsarvp:winpurple

execute as @a[team=Yellow,tag=KodexSupPack] at @s run function kodexsupvp:loseyellow
execute as @a[team=Purple,tag=KodexSupPack] at @s run function kodexsupvp:winpurple