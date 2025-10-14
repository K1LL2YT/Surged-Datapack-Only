# This is the Actual Title for the Kill pop up (Not the best work, but hey... I did something.)

# Title itself
execute as @a[scores={kill=1..}] at @s run title @s title [{"text":"⚔ ","color":"red","bold":false}, {"selector":"@a[scores={dead=1..}]","bold":true},{"text":" ⚔","color":"red","bold":false}]
execute as @a[scores={kill=1..}] at @s run title @s times 0 1s 0.2s
execute as @a[scores={dead=1..}] at @s run title @s title [{"text":"☠ ","color":"red","bold":false}, {"text":"ʏᴏᴜ ᴅɪᴇᴅ","color":"red","bold":true},{"text":" ☠","color":"red","bold":false}]
execute as @a[scores={dead=1..}] at @s run title @s times 0 2s 0.5s

# Kill Feed
execute as @a[scores={kill=1..}] at @s run tellraw @a [{"selector":"@a[scores={kill=1..}]","bold":true}, {"text":" ⚔→ ","color":"red","bold":false}, {"selector":"@a[scores={dead=1..}]","bold":true}, {"text":" ☠","color":"red","bold":false}]

# Kill Streak
execute as @a[scores={dead=1..}] at @s run scoreboard players set @s killstreak 0

# SFX
execute as @a[scores={kill=1..}] at @s if score @s killstreak matches 1 run playsound minecraft:sfx.ordercomplete record @s ~ ~ ~ 0.5 1
execute as @a[scores={kill=1..}] at @s if score @s killstreak matches 2 run playsound minecraft:sfx.ordercomplete record @s ~ ~ ~ 0.5 1.2
execute as @a[scores={kill=1..}] at @s if score @s killstreak matches 3 run playsound minecraft:sfx.ordercomplete record @s ~ ~ ~ 0.5 1.4
execute as @a[scores={kill=1..}] at @s if score @s killstreak matches 4 run playsound minecraft:sfx.ordercomplete record @s ~ ~ ~ 0.5 1.6
execute as @a[scores={kill=1..}] at @s if score @s killstreak matches 5.. run playsound minecraft:sfx.ordercomplete record @s ~ ~ ~ 0.5 1.8
execute as @a[scores={dead=1..}] at @s run playsound minecraft:sfx.death record @s ~ ~ ~ 0.5

# Reset Players
execute as @a[scores={kill=1..}] at @s run scoreboard players set @s kill 0
execute as @a[scores={dead=1..}] at @s run scoreboard players set @s dead 0

# "kill" & "dead" are given to when a player earns a kill or dies. This will then tell who will get the pop up and what name will appear.
# This then allows it to seem client side without any plugins. Only problem I can see (haven't tested) is getting multiple kills at once
# or at the same time as someone else. Although possible, highly unlikly since it would need to be frame 1.