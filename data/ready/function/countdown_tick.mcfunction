# Only run if timer > 0
execute if score #Countdown ReadyTimer matches 1.. run function ready:tick_logic
