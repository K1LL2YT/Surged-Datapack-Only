# Decrease countdown by 1
scoreboard players remove #Countdown ReadyTimer 1

# Schedule next tick in 1 second if still > 0
execute if score #Countdown ReadyTimer matches 1.. run schedule function ready:countdown_tick 1s

# When countdown reaches 0, evaluate readiness
execute if score #Countdown ReadyTimer matches 0 run function ready:finish_check
