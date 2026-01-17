# Planting
execute as @a[tag=ninja] if score @s ninjasneak matches 100.. run effect give @s glowing 3 0 true
execute as @a[tag=ninja] if score @s ninjasneak matches 100.. run scoreboard players set @s ninjasneak 0
execute as @a[tag=!ninja] run scoreboard players set @s ninjasneak 0
execute as @a[tag=ninja] if score @s sneaktime matches 0 run scoreboard players set @s ninjasneak 0