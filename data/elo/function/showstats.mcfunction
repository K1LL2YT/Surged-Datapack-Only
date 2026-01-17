execute as @a run tellraw @s [{"text":"--------------------------\n", "color":"gray"},{"text":"\n"},{"text":"Bombs Planted: ", "color":"yellow"},{"score":{"name":"@s","objective":"crplant"}},{"text":"\n"},{"text":"Bombs Defused: ", "color":"dark_purple"},{"score":{"name":"@s","objective":"crdefuse"}},{"text":"\n"},{"text":"Total Kills: ", "color":"green"},{"score":{"name":"@s","objective":"kills"}},{"text":"\n"},{"text":"Total Deaths: ", "color":"red"},{"score":{"name":"@s","objective":"deaths"}},{"text":"\n"},{"text":"--------------------------", "color":"gray"}]
scoreboard players set @a wongame 0
scoreboard players set @a lostgame 0
scoreboard players set @a crdefuse 0
scoreboard players set @a crplant 0