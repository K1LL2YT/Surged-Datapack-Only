# Increment printed counter
scoreboard players add #printed LBtemp 1

# Print line start (position, name, elo)
tellraw @s [{"score":{"name":"#printed","objective":"LBtemp"},"color":"gray"},{"text":". ","color":"gray"}, {"selector":"@s","color":"yellow"},{"text":" - ","color":"gray"},{"score":{"name":"@s","objective":"elo"},"color":"white"}, {"text":" elo ","color":"dark_gray"}]

# Now append rank text based on RankText value
# Append rank based on Rank (numeric)
execute as @s if score @s Rank matches 0 run tellraw @s [{"text":"(Unranked)","color":"#727272"}]
execute as @s if score @s Rank matches 1 run tellraw @s [{"text":"(Muffin)","color":"#9e6125"}]
execute as @s if score @s Rank matches 2 run tellraw @s [{"text":"(Pickle)","color":"#61ff41"}]
execute as @s if score @s Rank matches 3 run tellraw @s [{"text":"(Popcorn)","color":"#dadba3"}]
execute as @s if score @s Rank matches 4 run tellraw @s [{"text":"(Rice)","color":"#ffffff"}]
execute as @s if score @s Rank matches 5 run tellraw @s [{"text":"(Cheese)","color":"#fbff00"}]
execute as @s if score @s Rank matches 6 run tellraw @s [{"text":"(Chicken)","color":"#fa9129"}]
execute as @s if score @s Rank matches 7 run tellraw @s [{"text":"(Spinning)","color":"#00ccff"}]

# Mark player as printed
scoreboard players set @s Selected 1
