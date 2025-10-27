# Reset Selected and printed counter
scoreboard players set @a Selected 0
scoreboard players set #printed LBtemp 0

# Header
tellraw @a [{"text":"\n━━━━━━━━━━━━━━\n","color":"dark_gray"},{"text":"🏆 ELO LEADERBOARD 🏆\n","color":"gold","bold":true}]

# --- Repeat this 10 times for top 10 ---
# Reset max
scoreboard players set #max LBtemp -999999

# Find the highest Elo among unprinted
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo

# Print all players with that Elo
execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_chat_entry_broadcast

# Repeat the above 3 steps 10 times
scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo
execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_chat_entry_broadcast

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo
execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_chat_entry_broadcast

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo
execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_chat_entry_broadcast

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo
execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_chat_entry_broadcast

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo
execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_chat_entry_broadcast

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo
execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_chat_entry_broadcast

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo
execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_chat_entry_broadcast

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo
execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_chat_entry_broadcast

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo
execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_chat_entry_broadcast

# Footer
tellraw @a [{"text":"━━━━━━━━━━━━━━","color":"dark_gray"}]
