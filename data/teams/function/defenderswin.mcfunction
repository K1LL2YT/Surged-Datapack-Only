schedule clear teams:attackerswin
schedule clear teams:defenderswin

# Title
title @a times 0s 2s 1s
execute if score Side RoundsToSwitch matches 1 run title @a title {"text":"Volts Win","bold":true,"color":"dark_purple"}
execute if score Side RoundsToSwitch matches 2 run title @a title {"text":"Zappers Win","bold":true,"color":"yellow"}
title @a subtitle {"text":"ɢᴇᴛ ʀᴇᴀᴅʏ ꜰᴏʀ ᴛʜᴇ ɴᴇxᴛ ʀᴏᴜɴᴅ...","bold":true,"color":"gray"}
# SFX
execute as @a[tag=defender] at @s run playsound minecraft:sfx.success record @s ~ ~ ~ 0.5
execute as @a[tag=attacker] at @s run playsound minecraft:sfx.fail record @s ~ ~ ~ 0.5

# Functionality for Game
execute if score Side RoundsToSwitch matches 2 run scoreboard players add Yellow Wins 1
execute if score Side RoundsToSwitch matches 1 run scoreboard players add Purple Wins 1
scoreboard players add Round RoundsToSwitch 1
schedule function gameplay:switchsides 4s append
schedule function ui:fadeui 6s append
schedule function gameplay:gamesetup 7s append
scoreboard players set bomb bomb 0
schedule function gameplay:winner 3s append
clear @a[team=!Admin]
kill @e[type=item,name="Carrot on a Stick"]
kill @e[tag=Yellowrecontower]
kill @e[tag=Purplerecontower]
scoreboard players set @a killstreak 0
kill @e[type=area_effect_cloud]
effect clear @a[team=!Admin,team=!Owner]

execute as @a[tag=attacker,tag=KillzPack] at @s run function killzvp:loseyellow
execute as @a[tag=defender,tag=KillzPack] at @s run function killzvp:winpurple

execute as @a[tag=attacker,tag=DefaultPack] at @s run function defaultvp:loseyellow
execute as @a[tag=defender,tag=DefaultPack] at @s run function defaultvp:winpurple

execute as @a[tag=attacker,tag=ToadPack] at @s run function toadvp:loseyellow
execute as @a[tag=defender,tag=ToadPack] at @s run function toadvp:winpurple

execute as @a[tag=attacker,tag=KodexSarPack] at @s run function kodexsarvp:loseyellow
execute as @a[tag=defender,tag=KodexSarPack] at @s run function kodexsarvp:winpurple

execute as @a[tag=attacker,tag=KodexSupPack] at @s run function kodexsupvp:loseyellow
execute as @a[tag=defender,tag=KodexSupPack] at @s run function kodexsupvp:winpurple

execute as @a[tag=attacker,tag=GamingGuyPack] at @s run function gamingvp:loseyellow
execute as @a[tag=defender,tag=GamingGuyPack] at @s run function gamingvp:winpurple