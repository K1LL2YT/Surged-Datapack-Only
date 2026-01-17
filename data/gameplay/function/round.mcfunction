# ---------------
#  Round System
# ---------------
# The Round system consist of both the Preround and the actual Round. To do this, it contains a scoreboard that helps get all
# the timers in their place. Same goes for playing and started, which helps the game tell if the game and round is going at
# that current moment.

# OST is added later and the bomb is used to help tell which team wins. Pause is for pausing, should be simple to know.

# Start Game
execute as @a if score playing playing matches 0 at @s run effect give @a[team=!Admin,team=!Owner] weakness 1 255 true
execute as @a if score playing playing matches 1 unless score preround preround = preroundstop preround at @s run effect give @a[team=!Admin,team=!Owner] weakness 1 255 true
execute as @a if score playing playing matches 1 unless score preround preround = preroundstop preround at @s run effect give @a[team=!Admin,team=!Owner] regeneration 1 255 true

execute as @a if score playing playing matches 1 run gamemode spectator @a[team=spec]

# Setting the round timers once the Pre-Round is over.
execute if score playing playing matches 1 if score started started matches 1 unless score pause pause matches 1 run scoreboard players set round round 3001
execute if score playing playing matches 1 if score round round matches 3001 unless score pause pause matches 1 run scoreboard players set started started 0
execute if score playing playing matches 1 if score round round matches 3001 unless score pause pause matches 1 run scoreboard players set #timer time 150
execute if score playing playing matches 1 if score round round matches 3001.. unless score pause pause matches 1 run function timer:start

# Resetting the Pre-Round timer if the round is over.
execute if score playing playing matches 1 if score round round matches 0 unless score pause pause matches 1 run scoreboard players set preround preround 400
execute if score playing playing matches 1 if score round round matches 0 unless score pause pause matches 1 run scoreboard players set #timer time 20
execute if score playing playing matches 1 if score round round matches 0 unless score pause pause matches 1 run function timer:start
execute if score playing playing matches 1 if score round round matches 0 unless score pause pause matches 1 run effect give @a instant_health 1 200

# Checking if the bomb is up when time is out.
execute if score bomb bomb matches 1 if score round round matches 0 unless score pause pause matches 1 run schedule function teams:attackerswin 0.2s append
execute if score bomb bomb matches 0 if score round round matches 0 unless score pause pause matches 1 run schedule function teams:defenderswin 0.2s append
execute if score round round matches ..1 unless score pause pause matches 1 run scoreboard players set @a currentlydead 0

# Timer/OST
execute if score playing playing matches 1 if score round round > roundend round unless score pause pause matches 1 run scoreboard players remove round round 1
execute if score playing playing matches 1 if score preround preround > preroundstop preround unless score pause pause matches 1 run scoreboard players remove preround preround 1
execute if score playing playing matches 1 if score preround preround matches 0 unless score pause pause matches 1 run scoreboard players set started started 1
execute as @a at @s if score round round matches 3000 if score mapselect mapselect matches 1 run playsound minecraft:ost.midround voice @s ~ ~ ~ 0.1
execute as @a at @s if score round round matches 3000 if score mapselect mapselect matches 2 run playsound minecraft:ost.midround voice @s ~ ~ ~ 0.1
execute as @a at @s if score round round matches 3000 if score mapselect mapselect matches 3 run playsound minecraft:ost.doorsmidround voice @s ~ ~ ~ 0.1
execute as @a at @s if score round round matches ..1 if score mapselect mapselect matches 3 run stopsound @a voice minecraft:ost.doorsplanted
execute as @a at @s if score round round matches 3000 if score mapselect mapselect matches 4 run playsound minecraft:ost.treasuretakedown voice @s ~ ~ ~ 0.1
execute as @a at @s if score round round matches 355 if score mapselect mapselect matches 4 run stopsound @a
execute as @a at @s if score round round matches 355 if score mapselect mapselect matches 4 run playsound minecraft:ost.hurryupresults voice @s ~ ~ ~ 0.1
execute as @a at @s if score round round matches 3000 if score mapselect mapselect matches 5 run playsound minecraft:ost.midround voice @s ~ ~ ~ 0.1
execute as @a at @s if score round round matches 3000 if score mapselect mapselect matches 6 run playsound minecraft:ost.midround voice @s ~ ~ ~ 0.1
execute as @a at @s if score round round matches 3000 if score mapselect mapselect matches 7 run playsound minecraft:ost.midround voice @s ~ ~ ~ 0.1