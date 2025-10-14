# Increment printed counter
scoreboard players add #printed LBtemp 1

# Send line to all players
tellraw @a [{"score":{"name":"#printed","objective":"LBtemp"},"color":"gray"},{"text":". ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":" - ","color":"gray"},{"score":{"name":"@s","objective":"elo"},"color":"white"},{"text":" elo ","color":"dark_gray"}]

# Append rank (numeric only)
execute as @s if score @s Rank matches 0 run tellraw @a [{"text":"(Unranked)","color":"#727272"}]
execute as @s if score @s Rank matches 1 run tellraw @a [{"text":"(Muffin)","color":"#9e6125"}]
execute as @s if score @s Rank matches 2 run tellraw @a [{"text":"(Pickle)","color":"#61ff41"}]
execute as @s if score @s Rank matches 3 run tellraw @a [{"text":"(Popcorn)","color":"#dadba3"}]
execute as @s if score @s Rank matches 4 run tellraw @a [{"text":"(Rice)","color":"#ffffff"}]
execute as @s if score @s Rank matches 5 run tellraw @a [{"text":"(Cheese)","color":"#fbff00"}]
execute as @s if score @s Rank matches 6 run tellraw @a [{"text":"(Chicken)","color":"#fa9129"}]
execute as @s if score @s Rank matches 7 run tellraw @a [{"text":"(Spinning)","color":"#00ccff"}]

# Mark player as printed
scoreboard players set @s Selected 1
