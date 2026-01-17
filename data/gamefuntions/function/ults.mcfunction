# --------
#   Ults
# --------
# Ults are activated using Fungus on a Stick. Some will be using timers, while others will just be something that effects the players
# regularly. Should be easy to understand when you see how this all works.

## Alt Timers
execute as @a if score @s ult matches 0 unless score playing playing matches 0 run item replace entity @s container.8 with minecraft:air
execute as @a if score @s ult matches ..-1 run scoreboard players set @s ult 0
execute as @a run scoreboard players remove @s ult 1

## Notifacation
execute as @a[scores={click=1..}] run tellraw @a [{"text":"⚠ ","color":"gold","bold":false}, {"selector":"@a[scores={click=1..}]","bold":true}, {"text":"'ѕ ᴜʟᴛ ɪѕ ᴀᴄᴛɪᴠᴀᴛᴇᴅ","color":"red","bold":false}]

## Ult Kills/Has Ult
execute as @a if score @s ultkill matches 5.. unless score @s hasult matches 1.. run give @s minecraft:warped_fungus_on_a_stick
execute as @a if score @s ultkill matches 5.. run scoreboard players set @s hasult 1
execute as @a if score @s ultkill matches 5.. run scoreboard players set @s ultkill 0

## Recon
### Yellow
execute as @a[team=Yellow,tag=recon] if score @s click matches 1.. run effect give @a[team=Purple] minecraft:glowing 7 0 true
execute as @a[team=Yellow,tag=recon] if score @s click matches 1.. at @s run clear @s minecraft:warped_fungus_on_a_stick

### Purple
execute as @a[team=Purple,tag=recon] if score @s click matches 1.. run effect give @a[team=Yellow] minecraft:glowing 7 0 true
execute as @a[team=Purple,tag=recon] if score @s click matches 1.. at @s run clear @s minecraft:warped_fungus_on_a_stick

## Melee
execute as @a[tag=sword] if score @s click matches 1.. at @s run effect give @s minecraft:strength 5 0 true
execute as @a[tag=sword] if score @s click matches 1.. at @s run clear @s minecraft:warped_fungus_on_a_stick

## Engineer
execute as @a[tag=engineer] if score @s click matches 1.. at @s run effect give @s minecraft:speed 30 1 true
execute as @a[tag=engineer] if score @s click matches 1.. at @s run effect give @s minecraft:resistance 30 1 true
execute as @a[tag=engineer] if score @s click matches 1.. at @s run clear @s minecraft:warped_fungus_on_a_stick

## Healer
### Purple
execute as @a[team=Purple,tag=healer] if score @s click matches 1.. at @s run effect give @a[team=Purple] minecraft:regeneration 20 1 true
execute as @a[team=Purple,tag=healer] if score @s click matches 1.. at @s run clear @s minecraft:warped_fungus_on_a_stick

### Yellow
execute as @a[team=Yellow,tag=healer] if score @s click matches 1.. at @s run effect give @a[team=Yellow] minecraft:regeneration 20 1 true
execute as @a[team=Yellow,tag=healer] if score @s click matches 1.. at @s run clear @s minecraft:warped_fungus_on_a_stick

## Postion Master
### Purple
execute as @a[team=Purple,tag=splasher] if score @s click matches 1.. at @s run effect give @a[team=Yellow] minecraft:blindness 10 1 true
execute as @a[team=Purple,tag=splasher] if score @s click matches 1.. at @s run clear @s minecraft:warped_fungus_on_a_stick

### Yellow
execute as @a[team=Yellow,tag=splasher] if score @s click matches 1.. at @s run effect give @a[team=Purple] minecraft:blindness 10 1 true
execute as @a[team=Yellow,tag=splasher] if score @s click matches 1.. at @s run clear @s minecraft:warped_fungus_on_a_stick

## Quickcharge
execute as @a[tag=quick] if score @s click matches 1.. at @s run help
execute as @a[tag=quick] if score @s click matches 1.. at @s run clear @s minecraft:warped_fungus_on_a_stick
execute as @a[tag=quick] if score @s click matches 1.. at @s run give @s crossbow[damage=464,charged_projectiles=[{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_poison"}}}]] 3

## Multishot
execute as @a[tag=multi] if score @s click matches 1.. at @s run help
execute as @a[tag=multi] if score @s click matches 1.. at @s run clear @s minecraft:warped_fungus_on_a_stick
execute as @a[tag=multi] if score @s ult matches 1.. at @s run item replace entity @s container.8 with crossbow[damage=465,charged_projectiles=[{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:2,explosions:[{shape:"large_ball",colors:[I;16711680]}]}}}]] 1
execute as @a[tag=multi] if score @s click matches 1.. run scoreboard players set @s ult 100

## Ninja
### Purple
execute as @a[team=Purple,tag=ninja] if score @s click matches 1.. at @s run effect give @a[team=Purple] minecraft:invisibility 10 0 true
execute as @a[team=Purple,tag=ninja] if score @s click matches 1.. at @s run clear @s minecraft:warped_fungus_on_a_stick

### Yellow
execute as @a[team=Yellow,tag=ninja] if score @s click matches 1.. at @s run effect give @a[team=Yellow] minecraft:invisibility 10 0 true
execute as @a[team=Yellow,tag=ninja] if score @s click matches 1.. at @s run clear @s minecraft:warped_fungus_on_a_stick

## Juggernaunt
### Purple
execute as @a[team=Purple,tag=jugg] if score @s click matches 1.. at @s run effect give @a[team=Purple] minecraft:resistance 10 2 true
execute as @a[team=Purple,tag=jugg] if score @s click matches 1.. at @s run clear @s minecraft:warped_fungus_on_a_stick

### Yellow
execute as @a[team=Yellow,tag=jugg] if score @s click matches 1.. at @s run effect give @a[team=Yellow] minecraft:resistance 10 2 true
execute as @a[team=Yellow,tag=jugg] if score @s click matches 1.. at @s run clear @s minecraft:warped_fungus_on_a_stick

# Reset
execute as @a if score @s click matches 1.. run scoreboard players add @s careerults 1
execute as @a if score @s click matches 1.. run scoreboard players set @s hasult 0
execute as @a if score @s click matches 1.. run scoreboard players set @s ultkill 0
execute as @a if score @s click matches 1.. run scoreboard players set @s click 0