# --------------------
# Elo Rank Calculation
# --------------------
# Elo is calculated based on some of the ranks. Some ranks will gain/lose elo more than others.
# This will be changed soon to inlcude rounds win and used ults, but for now, it's only the basic stuff
# that was needed. This is done by the following math.

# Calculate Death and Kills (Kills X 10 | Death X -5)
# Give Win/Lose Points (this is based on what rank you are.)
# Plant and Defusing (10 Each)

# Ranks then given base on the rank (Seen in update_rank.mcfunction)

#Unranked-Muffin
execute as @a[scores={Rank=0..1}] run scoreboard players operation @s deathelo = @s deaths
execute as @a[scores={Rank=0..1}] run scoreboard players operation @s killelo = @s kills
execute as @a[scores={Rank=0..1}] run scoreboard players operation @s killelo *= killelo elocalc
execute as @a[scores={Rank=0..1}] run scoreboard players operation @s deathelo *= deathelo elocalc
execute as @a[scores={Rank=0..1}] run scoreboard players operation @s elocalc = @s killelo
execute as @a[scores={Rank=0..1}] run scoreboard players operation @s wongame *= winelo elocalc
execute as @a[scores={Rank=0..1}] run scoreboard players operation @s elocalc += @s wongame
execute as @a[scores={Rank=0..1}] run scoreboard players operation @s lostgame *= loseelo elocalc
execute as @a[scores={Rank=0..1}] run scoreboard players operation @s elocalc -= @s lostgame
execute as @a[scores={Rank=0..1}] run scoreboard players operation @s crdefuse *= defuseelo elocalc
execute as @a[scores={Rank=0..1}] run scoreboard players operation @s crplant *= plantelo elocalc
execute as @a[scores={Rank=0..1}] run scoreboard players operation @s elocalc += @s crdefuse
execute as @a[scores={Rank=0..1}] run scoreboard players operation @s elocalc += @s crplant
execute as @a[scores={Rank=0..1}] run scoreboard players operation @s elocalc -= @s deathelo
#Pickle
execute as @a[scores={Rank=2}] run scoreboard players operation @s deathelo = @s deaths
execute as @a[scores={Rank=2}] run scoreboard players operation @s killelo = @s kills
execute as @a[scores={Rank=2}] run scoreboard players operation @s killelo *= killelo elocalc
execute as @a[scores={Rank=2}] run scoreboard players operation @s deathelo *= deathelo elocalc
execute as @a[scores={Rank=2}] run scoreboard players operation @s elocalc = @s killelo
execute as @a[scores={Rank=2}] run scoreboard players operation @s wongame *= winelopickle elocalc
execute as @a[scores={Rank=2}] run scoreboard players operation @s elocalc += @s wongame
execute as @a[scores={Rank=2}] run scoreboard players operation @s lostgame *= loseelopickle elocalc
execute as @a[scores={Rank=2}] run scoreboard players operation @s elocalc -= @s lostgame
execute as @a[scores={Rank=2}] run scoreboard players operation @s crdefuse *= defuseelo elocalc
execute as @a[scores={Rank=2}] run scoreboard players operation @s crplant *= plantelo elocalc
execute as @a[scores={Rank=2}] run scoreboard players operation @s elocalc += @s crdefuse
execute as @a[scores={Rank=2}] run scoreboard players operation @s elocalc += @s crplant
execute as @a[scores={Rank=2}] run scoreboard players operation @s elocalc -= @s deathelo
#Popcorn
execute as @a[scores={Rank=3}] run scoreboard players operation @s deathelo = @s deaths
execute as @a[scores={Rank=3}] run scoreboard players operation @s killelo = @s kills
execute as @a[scores={Rank=3}] run scoreboard players operation @s killelo *= killelo elocalc
execute as @a[scores={Rank=3}] run scoreboard players operation @s deathelo *= deathelo elocalc
execute as @a[scores={Rank=3}] run scoreboard players operation @s elocalc = @s killelo
execute as @a[scores={Rank=3}] run scoreboard players operation @s wongame *= winelopopcorn elocalc
execute as @a[scores={Rank=3}] run scoreboard players operation @s elocalc += @s wongame
execute as @a[scores={Rank=3}] run scoreboard players operation @s lostgame *= loseelopickle elocalc
execute as @a[scores={Rank=3}] run scoreboard players operation @s elocalc -= @s lostgame
execute as @a[scores={Rank=3}] run scoreboard players operation @s crdefuse *= defuseelo elocalc
execute as @a[scores={Rank=3}] run scoreboard players operation @s crplant *= plantelo elocalc
execute as @a[scores={Rank=3}] run scoreboard players operation @s elocalc += @s crdefuse
execute as @a[scores={Rank=3}] run scoreboard players operation @s elocalc += @s crplant
execute as @a[scores={Rank=3}] run scoreboard players operation @s elocalc -= @s deathelo
#Rice
execute as @a[scores={Rank=4}] run scoreboard players operation @s deathelo = @s deaths
execute as @a[scores={Rank=4}] run scoreboard players operation @s killelo = @s kills
execute as @a[scores={Rank=4}] run scoreboard players operation @s killelo *= killelo elocalc
execute as @a[scores={Rank=4}] run scoreboard players operation @s deathelo *= deathelo elocalc
execute as @a[scores={Rank=4}] run scoreboard players operation @s elocalc = @s killelo
execute as @a[scores={Rank=4}] run scoreboard players operation @s wongame *= winelorice elocalc
execute as @a[scores={Rank=4}] run scoreboard players operation @s elocalc += @s wongame
execute as @a[scores={Rank=4}] run scoreboard players operation @s lostgame *= loseelorice elocalc
execute as @a[scores={Rank=4}] run scoreboard players operation @s elocalc -= @s lostgame
execute as @a[scores={Rank=4}] run scoreboard players operation @s crdefuse *= defuseelo elocalc
execute as @a[scores={Rank=4}] run scoreboard players operation @s crplant *= plantelo elocalc
execute as @a[scores={Rank=4}] run scoreboard players operation @s elocalc += @s crdefuse
execute as @a[scores={Rank=4}] run scoreboard players operation @s elocalc += @s crplant
execute as @a[scores={Rank=4}] run scoreboard players operation @s elocalc -= @s deathelo
#Cheese
execute as @a[scores={Rank=5}] run scoreboard players operation @s deathelo = @s deaths
execute as @a[scores={Rank=5}] run scoreboard players operation @s killelo = @s kills
execute as @a[scores={Rank=5}] run scoreboard players operation @s killelo *= killelo elocalc
execute as @a[scores={Rank=5}] run scoreboard players operation @s deathelo *= deathelo elocalc
execute as @a[scores={Rank=5}] run scoreboard players operation @s elocalc = @s killelo
execute as @a[scores={Rank=5}] run scoreboard players operation @s wongame *= winelocheese elocalc
execute as @a[scores={Rank=5}] run scoreboard players operation @s elocalc += @s wongame
execute as @a[scores={Rank=5}] run scoreboard players operation @s lostgame *= loseelorice elocalc
execute as @a[scores={Rank=5}] run scoreboard players operation @s elocalc -= @s lostgame
execute as @a[scores={Rank=5}] run scoreboard players operation @s crdefuse *= defuseelo elocalc
execute as @a[scores={Rank=5}] run scoreboard players operation @s crplant *= plantelo elocalc
execute as @a[scores={Rank=5}] run scoreboard players operation @s elocalc += @s crdefuse
execute as @a[scores={Rank=5}] run scoreboard players operation @s elocalc += @s crplant
execute as @a[scores={Rank=5}] run scoreboard players operation @s elocalc -= @s deathelo
#Chicken
execute as @a[scores={Rank=6}] run scoreboard players operation @s deathelo = @s deaths
execute as @a[scores={Rank=6}] run scoreboard players operation @s killelo = @s kills
execute as @a[scores={Rank=6}] run scoreboard players operation @s killelo *= killelo elocalc
execute as @a[scores={Rank=6}] run scoreboard players operation @s deathelo *= deathelo elocalc
execute as @a[scores={Rank=6}] run scoreboard players operation @s elocalc = @s killelo
execute as @a[scores={Rank=6}] run scoreboard players operation @s wongame *= winelochicken elocalc
execute as @a[scores={Rank=6}] run scoreboard players operation @s elocalc += @s wongame
execute as @a[scores={Rank=6}] run scoreboard players operation @s lostgame *= loseelochicken elocalc
execute as @a[scores={Rank=6}] run scoreboard players operation @s elocalc -= @s lostgame
execute as @a[scores={Rank=6}] run scoreboard players operation @s crdefuse *= defuseelo elocalc
execute as @a[scores={Rank=6}] run scoreboard players operation @s crplant *= plantelo elocalc
execute as @a[scores={Rank=6}] run scoreboard players operation @s elocalc += @s crdefuse
execute as @a[scores={Rank=6}] run scoreboard players operation @s elocalc += @s crplant
execute as @a[scores={Rank=6}] run scoreboard players operation @s elocalc -= @s deathelo
#Spinning
execute as @a[scores={Rank=7}] run scoreboard players operation @s deathelo = @s deaths
execute as @a[scores={Rank=7}] run scoreboard players operation @s killelo = @s kills
execute as @a[scores={Rank=7}] run scoreboard players operation @s killelo *= killelo elocalc
execute as @a[scores={Rank=7}] run scoreboard players operation @s deathelo *= deathelo elocalc
execute as @a[scores={Rank=7}] run scoreboard players operation @s elocalc = @s killelo
execute as @a[scores={Rank=7}] run scoreboard players operation @s wongame *= winelospinning elocalc
execute as @a[scores={Rank=7}] run scoreboard players operation @s elocalc += @s wongame
execute as @a[scores={Rank=7}] run scoreboard players operation @s lostgame *= loseelospinning elocalc
execute as @a[scores={Rank=7}] run scoreboard players operation @s elocalc -= @s lostgame
execute as @a[scores={Rank=7}] run scoreboard players operation @s crdefuse *= defuseelo elocalc
execute as @a[scores={Rank=7}] run scoreboard players operation @s crplant *= plantelo elocalc
execute as @a[scores={Rank=7}] run scoreboard players operation @s elocalc += @s crdefuse
execute as @a[scores={Rank=7}] run scoreboard players operation @s elocalc += @s crplant
execute as @a[scores={Rank=7}] run scoreboard players operation @s elocalc -= @s deathelo

# Show players the amount of elo gained and lost then reset.
execute as @a run tellraw @s [{"text":"--------------------------\n", "color":"gray"},{"text":"ELO Gained/Lost: ", "color":"aqua"},{"score":{"name":"@s","objective":"elocalc"}},{"text":"\n"},{"text":"Bombs Planted: ", "color":"yellow"},{"score":{"name":"@s","objective":"crplant"}},{"text":"\n"},{"text":"Bombs Defused: ", "color":"dark_purple"},{"score":{"name":"@s","objective":"crdefuse"}},{"text":"\n"},{"text":"Total Kills: ", "color":"green"},{"score":{"name":"@s","objective":"kills"}},{"text":"\n"},{"text":"Total Deaths: ", "color":"red"},{"score":{"name":"@s","objective":"deaths"}},{"text":"\n"},{"text":"--------------------------", "color":"gray"}]
scoreboard players set @a wongame 0
scoreboard players set @a lostgame 0
scoreboard players set @a crdefuse 0
scoreboard players set @a crplant 0
execute as @a run scoreboard players operation @s elo += @s elocalc