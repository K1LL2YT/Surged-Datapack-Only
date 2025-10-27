function ui:fadeui
scoreboard players set bomb bomb 0
scoreboard players set round round -1
scoreboard players set @a kills 0
scoreboard players set @a deaths 0
scoreboard players set Yellow Wins 0
scoreboard players set Purple Wins 0
scoreboard players set start tutorial 1
scoreboard players set Round RoundsToSwitch 1
scoreboard players set @a[team=Yellow] InGame 1
scoreboard players set @a[team=Purple] InGame 1
execute store result score Side RoundsToSwitch run random value 1..2
execute if score mapselect mapselect matches 1 run scoreboard players set tutorial tutorial 701
execute if score mapselect mapselect matches 1 run schedule function tutorials:tnether 2s append
execute if score mapselect mapselect matches 2 run scoreboard players set tutorial tutorial 701
execute if score mapselect mapselect matches 2 run schedule function tutorials:toverworld 2s append
execute if score mapselect mapselect matches 3 run scoreboard players set tutorial tutorial 701
execute if score mapselect mapselect matches 3 run schedule function tutorials:tdoors 2s append
execute if score mapselect mapselect matches 4 run scoreboard players set tutorial tutorial 701
execute if score mapselect mapselect matches 4 run schedule function tutorials:ttreasure 2s append
execute if score mapselect mapselect matches 5 run scoreboard players set tutorial tutorial 901
execute if score mapselect mapselect matches 5 run schedule function tutorials:tswitchback 2s append
effect give @a instant_health 1 200
execute as @a run scoreboard players set @s hasult 0
execute as @a run scoreboard players set @s ultkill 0

execute if score Side RoundsToSwitch matches 1 run tag @a[team=Yellow] add attacker
execute if score Side RoundsToSwitch matches 1 run tag @a[team=Yellow] remove defender
execute if score Side RoundsToSwitch matches 2 run tag @a[team=Yellow] remove attacker
execute if score Side RoundsToSwitch matches 2 run tag @a[team=Yellow] add defender

execute if score Side RoundsToSwitch matches 1 run tag @a[team=Purple] remove attacker
execute if score Side RoundsToSwitch matches 1 run tag @a[team=Purple] add defender
execute if score Side RoundsToSwitch matches 2 run tag @a[team=Purple] add attacker
execute if score Side RoundsToSwitch matches 2 run tag @a[team=Purple] remove defender

gamemode adventure @a[team=!Admin,team=!spec,team=!Owner]
gamemode spectator @a[team=spec]
function timer:setup_timers

clear @a[team=!Admin,team=!Owner]

#First Game
execute as @a run advancement grant @s only minecraft:adventure/ol_betsy

# Do I really need to explain this?