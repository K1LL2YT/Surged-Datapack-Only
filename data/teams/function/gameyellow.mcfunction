stopsound @a
schedule clear gameplay:gamesetup
schedule clear ui:fadeui
schedule clear gameplay:switchsides
title @a times 0s 3s 3s
title @a title {"text":"Yellow Take it Home","bold":true,"color":"yellow"}
title @a subtitle {"text":"ɢɢ'ѕ","bold":true,"color":"gray"}
execute as @a at @s run playsound minecraft:sfx.gameend record @s ~ ~ ~ 0.5
scoreboard players set Yellow Wins 0
scoreboard players set Purple Wins 0
schedule function ui:fadeui 5s append
execute if score EloGame Gamemodes matches 1 run schedule function elo:calculate 5s append
execute if score EloGame Gamemodes matches 0 run schedule function elo:showstats 5s append
schedule function gamefuntions:lobbytp 6s append
execute as @a run scoreboard players set @s hasult 0
execute as @a run scoreboard players set @s ultkill 0
scoreboard players set #timer time 1
function timer:start
scoreboard players add @a[team=Yellow] wongame 1
scoreboard players add @a[team=Purple] lostgame 1
scoreboard players add @a[team=Yellow] careerwins 1
scoreboard players add @a[team=Purple] careerlose 1

execute as @a[team=Yellow,tag=KillzPack] at @s run function killzvp:gamewinyellow
execute as @a[team=Purple,tag=KillzPack] at @s run function killzvp:gamelosepurple

execute as @a[team=Yellow,tag=DefaultPack] at @s run function defaultvp:gamewinyellow
execute as @a[team=Purple,tag=DefaultPack] at @s run function defaultvp:gamelosepurple

execute as @a[team=Yellow,tag=ToadPack] at @s run function toadvp:gamewinyellow
execute as @a[team=Purple,tag=ToadPack] at @s run function toadvp:gamelosepurple

execute as @a[team=Yellow,tag=KodexSarPack] at @s run function kodexsarvp:gamewinyellow
execute as @a[team=Purple,tag=KodexSarPack] at @s run function kodexsarvp:gamelosepurple

execute as @a[team=Yellow,tag=KodexSupPack] at @s run function kodexsupvp:gamewinyellow
execute as @a[team=Purple,tag=KodexSupPack] at @s run function kodexsupvp:gamelosepurple

execute as @a[team=Yellow,tag=GamingGuyPack] at @s run function gamingvp:gamewinyellow
execute as @a[team=Purple,tag=GamingGuyPack] at @s run function gamingvp:gamelosepurple
# This is the same thing as the other wins... except its for the whole game.