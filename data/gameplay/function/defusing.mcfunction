# Defusing
execute as @a at @s if items entity @s weapon.mainhand minecraft:shears at @e[type=armor_stand,distance=0..1.5,tag=bomb] unless entity @s[tag=engineer] run scoreboard players add @s defusing 1
execute as @a at @s if items entity @s weapon.mainhand minecraft:shears at @e[type=armor_stand,distance=0..1.5,tag=bomb] if entity @s[tag=engineer] run scoreboard players add @s defusing 3
execute as @a at @e[type=armor_stand,sort=nearest,limit=1,tag=bomb] if entity @s[distance=1.5..] run scoreboard players reset @s defusing
execute as @a at @e[type=armor_stand,sort=nearest,limit=1,tag=bomb] if entity @s[distance=..1.5] unless items entity @s weapon.mainhand minecraft:shears run scoreboard players reset @s defusing

# When Finished
execute as @a[scores={defusing=140}] at @s run function gameplay:shockwavedefused
execute as @a[scores={defusing=140}] at @s run kill @e[tag=bomb]
execute as @a[scores={defusing=140}] at @s run scoreboard players add @s crdefuse 1
execute as @a[scores={defusing=140}] at @s run scoreboard players add @s careerdefuses 1
execute as @a[scores={defusing=140}] at @s run scoreboard players set bomb bomb 0
execute as @a[scores={defusing=140}] at @s run stopsound @a
execute as @a[scores={defusing=140}] at @s run scoreboard players set round round 0
execute as @a[scores={defusing=140}] at @s run scoreboard players set @s defusing 0

# Defusing Timer
execute as @a[scores={defusing=1}] at @s run title @s title {"text":"7s","bold":true,"color":"red"}
execute as @a[scores={defusing=20}] at @s run title @s title {"text":"6s","bold":true,"color":"red"}
execute as @a[scores={defusing=40}] at @s run title @s title {"text":"5s","bold":true,"color":"red"}
execute as @a[scores={defusing=60}] at @s run title @s title {"text":"4s","bold":true,"color":"red"}
execute as @a[scores={defusing=80}] at @s run title @s title {"text":"3s","bold":true,"color":"red"}
execute as @a[scores={defusing=100}] at @s run title @s title {"text":"2s","bold":true,"color":"red"}
execute as @a[scores={defusing=120}] at @s run title @s title {"text":"1s","bold":true,"color":"red"}

execute as @a[scores={defusing=1}] at @s run title @s times 0 1s 0.5s
execute as @a[scores={defusing=20}] at @s run title @s times 0 1s 0.5s
execute as @a[scores={defusing=40}] at @s run title @s times 0 1s 0.5s
execute as @a[scores={defusing=60}] at @s run title @s times 0 1s 0.5s
execute as @a[scores={defusing=80}] at @s run title @s times 0 1s 0.5s
execute as @a[scores={defusing=100}] at @s run title @s times 0 1s 0.5s
execute as @a[scores={defusing=120}] at @s run title @s times 0 1s 0.5s