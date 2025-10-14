# Only run if a ready check is not currently running
execute if score #Lock ReadyCheckLock matches 0 run function ready:start_check
