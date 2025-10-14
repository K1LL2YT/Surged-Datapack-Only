# Reset Selected flag and printed counter
scoreboard players set @a Selected 0
scoreboard players set #printed LBtemp 0
scoreboard players set #max LBtemp -999999

# Reset text_display text to header
data modify entity @e[type=text_display,tag=EloBoard,limit=1] text set value '{"text":"🏆 TOP 10 ELO LEADERBOARD","color":"gold","bold":true}'

# ---- Top 10 iterations ----
# Repeat 10 times manually
scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo

execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_holo_entry

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo

execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_holo_entry

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo

execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_holo_entry

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo

execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_holo_entry

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo

execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_holo_entry

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo

execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_holo_entry

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo

execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_holo_entry

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo

execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_holo_entry

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo

execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_holo_entry

scoreboard players set #max LBtemp -999999
execute as @a[scores={Selected=0}] run scoreboard players operation #max LBtemp > @s elo

execute as @a[scores={Selected=0}] if score @s elo = #max LBtemp run function elo:append_holo_entry
# (Copy above three lines 10 times to cover top 10)
