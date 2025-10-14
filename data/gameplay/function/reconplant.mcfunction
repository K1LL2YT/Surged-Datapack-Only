# Planting
execute as @a at @s if items entity @s[scores={sneakingrecon=1}] weapon.mainhand minecraft:redstone_torch unless block ~ -46 ~ minecraft:red_terracotta unless block ~ ~-0.1 ~ air run scoreboard players add @s plantingrecon 1
execute as @a[scores={sneakingrecon=0}] at @s run scoreboard players set @s plantingrecon 0

# When Finished
execute as @a[scores={plantingrecon=1..}] at @s run clear @s minecraft:redstone_torch
execute as @a[scores={plantingrecon=1..},team=Yellow] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["Yellowrecontower"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":2}}]}
execute as @a[scores={plantingrecon=1..},team=Purple] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["Purplerecontower"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":2}}]}
execute as @a[scores={plantingrecon=1..}] at @s run scoreboard players set @s plantingrecon 0
execute as @a[scores={sneakingrecon=1..}] at @s run scoreboard players set @s sneakingrecon 0