# This is to count the amount of team members to end the game IF all players on that team are dead.
# I'm not going to go into detail about this, so just try your best.

execute as @a[team=Purple] run scoreboard players set Purple TeamNumbers 0
execute as @a[team=Purple] run scoreboard players add Purple TeamNumbers 1

execute as @a[team=Yellow] run scoreboard players set Yellow TeamNumbers 0
execute as @a[team=Yellow] run scoreboard players add Yellow TeamNumbers 1

scoreboard players set purpledead currentlydead 0
execute as @a[team=Purple] run scoreboard players operation purpledead currentlydead += @s[team=Purple] currentlydead
execute as @a[team=Purple,scores={currentlydead=1}] at @s run gamemode spectator @s
execute as @a[team=Purple,scores={currentlydead=1}] at @s run spectate @p[team=Purple,scores={currentlydead=0}]

execute as @a if score playing playing matches 1 if score purpledead currentlydead = Purple TeamNumbers run scoreboard players set bomb bomb 1
execute as @a if score playing playing matches 1 if score purpledead currentlydead = Purple TeamNumbers run scoreboard players set round round 0
execute as @a if score playing playing matches 1 if score purpledead currentlydead = Purple TeamNumbers run stopsound @a

scoreboard players set yellowdead currentlydead 0
execute as @a[team=Yellow] run scoreboard players operation yellowdead currentlydead += @s[team=Yellow] currentlydead
execute as @a[team=Yellow,scores={currentlydead=1}] at @s run gamemode spectator @s
execute as @a[team=Yellow,scores={currentlydead=1}] at @s run spectate @p[team=Yellow,scores={currentlydead=0}]

execute as @a if score playing playing matches 1 if score bomb bomb matches 0 if score yellowdead currentlydead = Yellow TeamNumbers run scoreboard players set round round 0
execute as @a if score playing playing matches 1 if score bomb bomb matches 0 if score yellowdead currentlydead = Yellow TeamNumbers run stopsound @a
