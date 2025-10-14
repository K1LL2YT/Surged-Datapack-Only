# Reset local rank
scoreboard players set #rank LBtemp 1

# Count how many players have higher elo
execute as @a run scoreboard players set #rank LBtemp 1
execute as @a if score @s elo > @p elo run scoreboard players add #rank LBtemp 1

# Display local rank
execute as @p run tellraw @s [{"text":"Your Rank: ","color":"gray"},{"score":{"name":"#rank","objective":"LBtemp"},"color":"yellow"},{"text":". ","color":"gray"},{"selector":"@s","color":"white"},{"text":" - ","color":"gray"},{"score":{"name":"@s","objective":"elo"},"color":"white"},{"text":" ELO ","color":"dark_gray"}]

execute as @p if score @s Rank matches 0 run tellraw @s [{"text":"(Unranked)","color":"#727272"}]
execute as @p if score @s Rank matches 1 run tellraw @s [{"text":"(Muffin)","color":"#9e6125"}]
execute as @p if score @s Rank matches 2 run tellraw @s [{"text":"(Pickle)","color":"#61ff41"}]
execute as @p if score @s Rank matches 3 run tellraw @s [{"text":"(Popcorn)","color":"#dadba3"}]
execute as @p if score @s Rank matches 4 run tellraw @s [{"text":"(Rice)","color":"#ffffff"}]
execute as @p if score @s Rank matches 5 run tellraw @s [{"text":"(Cheese)","color":"#fbff00"}]
execute as @p if score @s Rank matches 6 run tellraw @s [{"text":"(Chicken)","color":"#fa9129"}]
execute as @p if score @s Rank matches 7 run tellraw @s [{"text":"(Spinning)","color":"#00ccff"}]