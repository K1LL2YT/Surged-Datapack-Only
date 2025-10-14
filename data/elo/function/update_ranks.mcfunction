# Reset
scoreboard players set @a Rank 0

# Unranked >99
execute as @a[scores={elo=..99}] run scoreboard players set @s Rank 0
# Muffin 100-399
execute as @a[scores={elo=100..399}] run scoreboard players set @s Rank 1
# Pickle 400-999
execute as @a[scores={elo=400..999}] run scoreboard players set @s Rank 2
# Popcorn 1000-1699
execute as @a[scores={elo=1000..1699}] run scoreboard players set @s Rank 3
# Rice 1700-2999
execute as @a[scores={elo=1700..2999}] run scoreboard players set @s Rank 4
# Cheese 3000-4999
execute as @a[scores={elo=3000..4999}] run scoreboard players set @s Rank 5
# Chicken 5000-6999
execute as @a[scores={elo=5000..6999}] run scoreboard players set @s Rank 6
# Spinning 7000+
execute as @a[scores={elo=7000..}] run scoreboard players set @s Rank 7