# Lock ready check so it won't start again until finished
scoreboard players set #Lock ReadyCheckLock 1
scoreboard players set @a ReadyTrigger 0
scoreboard players set @a Ready 0
scoreboard players enable @a ReadyTrigger

# Reset counters
scoreboard players set Yellow ReadyCount 0
scoreboard players set Purple ReadyCount 0
scoreboard players set Yellow TeamCount 0
scoreboard players set Purple TeamCount 0

# Count total players per team
execute as @a[team=Yellow] run scoreboard players add Yellow TeamCount 1
execute as @a[team=Purple] run scoreboard players add Purple TeamCount 1

# Set countdown to 20 seconds
scoreboard players set #Countdown ReadyTimer 10

# Send chat buttons to players
execute as @a at @s run playsound minecraft:block.note_block.bell record @s ~ ~ ~
tellraw @a [{"text":"[READY]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ReadyTrigger set 1"}},{"text":" "},{"text":"[NOT READY]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ReadyTrigger set 0"}}]

# Announce ready check started
execute as @a run tellraw @s [{"text":"Ready check started! Click [READY] or [NOT READY] in chat.","color":"gold"}]


# Schedule the countdown tick in 1 second
schedule function ready:countdown_tick 1s
