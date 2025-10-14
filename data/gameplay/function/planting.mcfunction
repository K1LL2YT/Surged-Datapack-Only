# Planting
execute as @a at @s if items entity @s[scores={sneaktime=1}] weapon.mainhand minecraft:carrot_on_a_stick if block ~ -46 ~ minecraft:red_terracotta unless block ~ ~-0.1 ~ air run scoreboard players add @s planting 1
execute as @a[scores={sneaktime=0}] at @s run scoreboard players set @s planting 0


execute as @a[scores={planting=1..100}] at @s run attribute @s generic.jump_strength base set 0 
execute as @a[scores={planting=0}] at @s run attribute @s generic.jump_strength base set 0.41999998688697815

# When Finished
execute as @a[scores={planting=100..}] at @s run clear @s minecraft:carrot_on_a_stick
execute as @a[scores={planting=100..}] at @s run function gameplay:shockwaveplanted
execute as @a[scores={planting=100..}] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Glowing:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["bomb"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":1}}]}
execute as @a[scores={planting=100..}] at @s run scoreboard players set bomb bomb 1
execute as @a[scores={planting=100..}] at @s run scoreboard players add @s crplant 1
execute as @a[scores={planting=100}] at @s run scoreboard players add @s careerplants 1
execute as @a[scores={planting=100..}] at @s run scoreboard players set @s planting 0
execute as @a[scores={sneaktime=1..}] at @s run scoreboard players set @s sneaktime 0

# Planting Timer
execute as @a[scores={planting=1}] at @s run title @s title {"text":"5s","bold":true,"color":"red"}
execute as @a[scores={planting=20}] at @s run title @s title {"text":"4s","bold":true,"color":"red"}
execute as @a[scores={planting=40}] at @s run title @s title {"text":"3s","bold":true,"color":"red"}
execute as @a[scores={planting=60}] at @s run title @s title {"text":"2s","bold":true,"color":"red"}
execute as @a[scores={planting=80}] at @s run title @s title {"text":"1s","bold":true,"color":"red"}

execute as @a[scores={planting=1}] at @s run title @s times 0 1s 0.5s
execute as @a[scores={planting=20}] at @s run title @s times 0 1s 0.5s
execute as @a[scores={planting=40}] at @s run title @s times 0 1s 0.5s
execute as @a[scores={planting=60}] at @s run title @s times 0 1s 0.5s
execute as @a[scores={planting=80}] at @s run title @s times 0 1s 0.5s