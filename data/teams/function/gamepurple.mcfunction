stopsound @a
schedule clear gameplay:gamesetup
schedule clear ui:fadeui
schedule clear gameplay:switchsides
title @a times 0s 3s 3s
title @a title {"text":"Purple Take it Home","bold":true,"color":"dark_purple"}
title @a subtitle {"text":"ɢɢ'ѕ","bold":true,"color":"gray"}
execute as @a at @s run playsound minecraft:sfx.gameend record @s ~ ~ ~ 0.5
scoreboard players set Purple Wins 0
scoreboard players set Yellow Wins 0
schedule function ui:fadeui 5s append
execute if score EloGame Gamemodes matches 1 run schedule function elo:calculate 5s append
execute if score EloGame Gamemodes matches 0 run schedule function elo:showstats 5s append
schedule function gamefuntions:lobbytp 6s append
execute as @a run scoreboard players set @s hasult 0
execute as @a run scoreboard players set @s ultkill 0
scoreboard players set #timer time 1
function timer:start
scoreboard players add @a[team=Purple] wongame 1
scoreboard players add @a[team=Yellow] lostgame 1
scoreboard players add @a[team=Purple] careerwins 1
scoreboard players add @a[team=Yellow] careerlose 1

execute as @a[team=Yellow,tag=KillzPack] at @s run function killzvp:gameloseyellow
execute as @a[team=Purple,tag=KillzPack] at @s run function killzvp:gamewinpurple

execute as @a[team=Yellow,tag=DefaultPack] at @s run function defaultvp:gameloseyellow
execute as @a[team=Purple,tag=DefaultPack] at @s run function defaultvp:gamewinpurple

execute as @a[team=Yellow,tag=ToadPack] at @s run function toadvp:gameloseyellow
execute as @a[team=Purple,tag=ToadPack] at @s run function toadvp:gamewinpurple

execute as @a[team=Yellow,tag=KodexSarPack] at @s run function kodexsarvp:gameloseyellow
execute as @a[team=Purple,tag=KodexSarPack] at @s run function kodexsarvp:gamewinpurple

execute as @a[team=Yellow,tag=KodexSupPack] at @s run function kodexsupvp:gameloseyellow
execute as @a[team=Purple,tag=KodexSupPack] at @s run function kodexsupvp:gamewinpurple

execute as @a[team=Yellow,tag=GamingGuyPack] at @s run function gamingvp:gameloseyellow
execute as @a[team=Purple,tag=GamingGuyPack] at @s run function gamingvp:gamewinpurple

# This is the same thing as the other wins... except its for the whole game.