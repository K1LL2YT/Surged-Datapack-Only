effect give @a saturation infinite 100 true
execute as @a at @s if block ~ ~-1 ~ yellow_concrete_powder run team join Yellow
execute as @a at @s if block ~ ~-1 ~ purple_concrete_powder run team join Purple
execute as @a at @s if block ~ ~-1 ~ gray_concrete_powder run team join spec
execute as @a[name="GamingGuy907"] at @s if block ~ ~-1 ~ cyan_concrete_powder run team join Admin
execute as @a[name="Smarsian"] at @s if block ~ ~-1 ~ cyan_concrete_powder run team join Admin
execute as @a[name="JuztKillz"] at @s if block ~ ~-1 ~ cyan_concrete_powder run team join Owner
execute as @a[team=!Admin,team=!Owner ,team=!Yellow,team=!Purple,team=!spec] as @s run team join spec

# Kits
## No Kit/New Player
execute as @a[tag=!healer,tag=!recon,tag=!multi,tag=!quick,tag=!sword] at @s run tellraw @s ["",{"text":"-----------------------------------------------------","color":"dark_red"},{"text":"\n  \ud83d\udca3 "},{"text":"\u1d21\u1d07\u029f\u1d04\u1d0f\u1d0d\u1d07 \u1d1b\u1d0f \u0455\u1d1c\u0280\u0262\u1d07","color":"#FFDB8B"},{"text":" \ud83d\udca3\n\n"},{"text":"Since this is your first time joining the server, you have been given the ","italic":true,"color":"gray"},{"text":"Healer ","italic":true,"color":"green"},{"text":"kit. You can change it by walking over to any of the other Kits and stepping on them.","italic":true,"color":"gray"},{"text":"\n"},{"text":"-----------------------------------------------------","color":"dark_red"}]
execute as @a[tag=!healer,tag=!recon,tag=!multi,tag=!quick,tag=!sword] at @s run tag @s add healer

## Recon
execute as @a[tag=!recon] at @s if block ~ ~-1 ~ cyan_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Recon","bold":true,"color":"yellow"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!recon] at @s if block ~ ~-1 ~ cyan_terracotta run tag @s remove healer
execute as @a[tag=!recon] at @s if block ~ ~-1 ~ cyan_terracotta run tag @s remove multi
execute as @a[tag=!recon] at @s if block ~ ~-1 ~ cyan_terracotta run tag @s remove quick
execute as @a[tag=!recon] at @s if block ~ ~-1 ~ cyan_terracotta run tag @s remove sword
execute as @a[tag=!recon] at @s if block ~ ~-1 ~ cyan_terracotta run tag @s add recon

## Multi-shot
execute as @a[tag=!multi] at @s if block ~ ~-1 ~ light_blue_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Multi-Shot","bold":true,"color":"red"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!multi] at @s if block ~ ~-1 ~ light_blue_terracotta run tag @s remove healer
execute as @a[tag=!multi] at @s if block ~ ~-1 ~ light_blue_terracotta run tag @s remove recon
execute as @a[tag=!multi] at @s if block ~ ~-1 ~ light_blue_terracotta run tag @s remove quick
execute as @a[tag=!multi] at @s if block ~ ~-1 ~ light_blue_terracotta run tag @s remove sword
execute as @a[tag=!multi] at @s if block ~ ~-1 ~ light_blue_terracotta run tag @s add multi

## Quick Charge
execute as @a[tag=!quick] at @s if block ~ ~-1 ~ light_gray_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Quick Charge","bold":true,"color":"blue"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!quick] at @s if block ~ ~-1 ~ light_gray_terracotta run tag @s remove healer
execute as @a[tag=!quick] at @s if block ~ ~-1 ~ light_gray_terracotta run tag @s remove recon
execute as @a[tag=!quick] at @s if block ~ ~-1 ~ light_gray_terracotta run tag @s remove multi
execute as @a[tag=!quick] at @s if block ~ ~-1 ~ light_gray_terracotta run tag @s remove sword
execute as @a[tag=!quick] at @s if block ~ ~-1 ~ light_gray_terracotta run tag @s add quick

## Melee
execute as @a[tag=!sword] at @s if block ~ ~-1 ~ green_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Melee","bold":true,"color":"gold"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!sword] at @s if block ~ ~-1 ~ green_terracotta run tag @s remove healer
execute as @a[tag=!sword] at @s if block ~ ~-1 ~ green_terracotta run tag @s remove recon
execute as @a[tag=!sword] at @s if block ~ ~-1 ~ green_terracotta run tag @s remove multi
execute as @a[tag=!sword] at @s if block ~ ~-1 ~ green_terracotta run tag @s remove quick
execute as @a[tag=!sword] at @s if block ~ ~-1 ~ green_terracotta run tag @s add sword

## Healer
execute as @a[tag=!healer] at @s if block ~ ~-1 ~ lime_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Healer","bold":true,"color":"green"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!healer] at @s if block ~ ~-1 ~ lime_terracotta run tag @s remove recon
execute as @a[tag=!healer] at @s if block ~ ~-1 ~ lime_terracotta run tag @s remove multi
execute as @a[tag=!healer] at @s if block ~ ~-1 ~ lime_terracotta run tag @s remove quick
execute as @a[tag=!healer] at @s if block ~ ~-1 ~ lime_terracotta run tag @s remove sword
execute as @a[tag=!healer] at @s if block ~ ~-1 ~ lime_terracotta run tag @s add healer

execute as @a[team=!spec,team=!Admin,team=!Owner,gamemode=!spectator] if score started started matches 0 at @s if block ~ ~0.1 ~ minecraft:water run damage @s 6 minecraft:generic_kill

scoreboard players set @a[team=spec] TeamPick 0
scoreboard players set @a[team=Admin] TeamPick 3
scoreboard players set @a[team=Purple] TeamPick 1
scoreboard players set @a[team=Yellow] TeamPick 2
execute as @e[type=item,name="Carrot on a Stick"] at @s if score @p TeamPick matches 1 unless block ~ ~-0.1 ~ air run data merge entity @s {PickupDelay:10000}
execute as @e[type=item,name="Carrot on a Stick"] at @s if score @p TeamPick matches 2 unless block ~ ~-0.1 ~ air run data merge entity @s {PickupDelay:0}
kill @e[type=item,name="Bow"]
kill @e[type=item,name="Crossbow"]
kill @e[type=item,name="Wooden Sword"]
kill @e[type=item,name="Arrow"]
kill @e[type=item,name="Shears"]
kill @e[type=item,name="Splash Uncraftable Potion"]
kill @e[type=item,name="Uncraftable Potion"]
kill @e[type=item,name="Glass Bottle"]
kill @e[type=item,name="Redstone Torch"]
kill @e[type=item,name="Warped Fungus on a Stick"]
kill @e[type=item,name="Tropical Fish"]
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=spectral_arrow,nbt={inGround:1b}]

execute if score mapselect mapselect matches 1 run time set night
execute if score mapselect mapselect matches 1 run weather clear
execute if score mapselect mapselect matches 2 run time set noon
execute if score mapselect mapselect matches 2 run weather clear
execute if score mapselect mapselect matches 3 run time set midnight
execute if score mapselect mapselect matches 3 run weather thunder
execute if score mapselect mapselect matches 4 run time set noon
execute if score mapselect mapselect matches 4 run weather clear