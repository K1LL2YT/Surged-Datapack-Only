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
execute as @a[tag=!healer,tag=!recon,tag=!multi,tag=!quick,tag=!sword,tag=!splasher,tag=!engineer] at @s run tellraw @s ["",{"text":"-----------------------------------------------------","color":"dark_red"},{"text":"\n  \ud83d\udca3 "},{"text":"\u1d21\u1d07\u029f\u1d04\u1d0f\u1d0d\u1d07 \u1d1b\u1d0f \u0455\u1d1c\u0280\u0262\u1d07","color":"#FFDB8B"},{"text":" \ud83d\udca3\n\n"},{"text":"Since this is your first time joining the server, you have been given the ","italic":true,"color":"gray"},{"text":"Healer ","italic":true,"color":"green"},{"text":"kit. You can change it by walking over to any of the other Kits and stepping on them.","italic":true,"color":"gray"},{"text":"\n"},{"text":"-----------------------------------------------------","color":"dark_red"}]
execute as @a[tag=!healer,tag=!recon,tag=!multi,tag=!quick,tag=!sword,tag=!splasher,tag=!engineer] at @s run tag @s add healer

## Recon
execute as @a[tag=!recon] at @s if block ~ ~-1 ~ cyan_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Recon","bold":true,"color":"yellow"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!recon] at @s if block ~ ~-1 ~ cyan_terracotta run tag @s remove healer
execute as @a[tag=!recon] at @s if block ~ ~-1 ~ cyan_terracotta run tag @s remove multi
execute as @a[tag=!recon] at @s if block ~ ~-1 ~ cyan_terracotta run tag @s remove quick
execute as @a[tag=!recon] at @s if block ~ ~-1 ~ cyan_terracotta run tag @s remove sword
execute as @a[tag=!recon] at @s if block ~ ~-1 ~ cyan_terracotta run tag @s add recon
execute as @a[tag=!recon] at @s if block ~ ~-1 ~ cyan_terracotta run tag @s remove splasher
execute as @a[tag=!recon] at @s if block ~ ~-1 ~ cyan_terracotta run tag @s remove engineer

## Multi-shot
execute as @a[tag=!multi] at @s if block ~ ~-1 ~ light_blue_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Multi-Shot","bold":true,"color":"red"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!multi] at @s if block ~ ~-1 ~ light_blue_terracotta run tag @s remove healer
execute as @a[tag=!multi] at @s if block ~ ~-1 ~ light_blue_terracotta run tag @s remove recon
execute as @a[tag=!multi] at @s if block ~ ~-1 ~ light_blue_terracotta run tag @s remove quick
execute as @a[tag=!multi] at @s if block ~ ~-1 ~ light_blue_terracotta run tag @s remove sword
execute as @a[tag=!multi] at @s if block ~ ~-1 ~ light_blue_terracotta run tag @s add multi
execute as @a[tag=!multi] at @s if block ~ ~-1 ~ light_blue_terracotta run tag @s remove splasher
execute as @a[tag=!multi] at @s if block ~ ~-1 ~ light_blue_terracotta run tag @s remove engineer

## Quick Charge
execute as @a[tag=!quick] at @s if block ~ ~-1 ~ light_gray_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Quick Charge","bold":true,"color":"blue"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!quick] at @s if block ~ ~-1 ~ light_gray_terracotta run tag @s remove healer
execute as @a[tag=!quick] at @s if block ~ ~-1 ~ light_gray_terracotta run tag @s remove recon
execute as @a[tag=!quick] at @s if block ~ ~-1 ~ light_gray_terracotta run tag @s remove multi
execute as @a[tag=!quick] at @s if block ~ ~-1 ~ light_gray_terracotta run tag @s remove sword
execute as @a[tag=!quick] at @s if block ~ ~-1 ~ light_gray_terracotta run tag @s add quick
execute as @a[tag=!quick] at @s if block ~ ~-1 ~ light_gray_terracotta run tag @s remove splasher
execute as @a[tag=!quick] at @s if block ~ ~-1 ~ light_gray_terracotta run tag @s remove engineer

## Melee
execute as @a[tag=!sword] at @s if block ~ ~-1 ~ green_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Melee","bold":true,"color":"gold"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!sword] at @s if block ~ ~-1 ~ green_terracotta run tag @s remove healer
execute as @a[tag=!sword] at @s if block ~ ~-1 ~ green_terracotta run tag @s remove recon
execute as @a[tag=!sword] at @s if block ~ ~-1 ~ green_terracotta run tag @s remove multi
execute as @a[tag=!sword] at @s if block ~ ~-1 ~ green_terracotta run tag @s remove quick
execute as @a[tag=!sword] at @s if block ~ ~-1 ~ green_terracotta run tag @s add sword
execute as @a[tag=!sword] at @s if block ~ ~-1 ~ green_terracotta run tag @s remove splasher
execute as @a[tag=!sword] at @s if block ~ ~-1 ~ green_terracotta run tag @s remove engineer

## Healer
execute as @a[tag=!healer] at @s if block ~ ~-1 ~ lime_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Healer","bold":true,"color":"green"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!healer] at @s if block ~ ~-1 ~ lime_terracotta run tag @s remove recon
execute as @a[tag=!healer] at @s if block ~ ~-1 ~ lime_terracotta run tag @s remove multi
execute as @a[tag=!healer] at @s if block ~ ~-1 ~ lime_terracotta run tag @s remove quick
execute as @a[tag=!healer] at @s if block ~ ~-1 ~ lime_terracotta run tag @s remove sword
execute as @a[tag=!healer] at @s if block ~ ~-1 ~ lime_terracotta run tag @s add healer
execute as @a[tag=!healer] at @s if block ~ ~-1 ~ lime_terracotta run tag @s remove splasher
execute as @a[tag=!healer] at @s if block ~ ~-1 ~ lime_terracotta run tag @s remove engineer

## Potion Master
execute as @a[tag=!splasher] at @s if block ~ ~-1 ~ orange_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Potion Master","bold":true,"color":"#a57ebe"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!splasher] at @s if block ~ ~-1 ~ orange_terracotta run tag @s remove recon
execute as @a[tag=!splasher] at @s if block ~ ~-1 ~ orange_terracotta run tag @s remove multi
execute as @a[tag=!splasher] at @s if block ~ ~-1 ~ orange_terracotta run tag @s remove quick
execute as @a[tag=!splasher] at @s if block ~ ~-1 ~ orange_terracotta run tag @s remove sword
execute as @a[tag=!splasher] at @s if block ~ ~-1 ~ orange_terracotta run tag @s remove healer
execute as @a[tag=!splasher] at @s if block ~ ~-1 ~ orange_terracotta run tag @s add splasher
execute as @a[tag=!splasher] at @s if block ~ ~-1 ~ orange_terracotta run tag @s remove engineer

## Engineer
execute as @a[tag=!engineer] at @s if block ~ ~-1 ~ purple_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Engineer","bold":true,"color":"#cf6b43"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!engineer] at @s if block ~ ~-1 ~ purple_terracotta run tag @s remove recon
execute as @a[tag=!engineer] at @s if block ~ ~-1 ~ purple_terracotta run tag @s remove multi
execute as @a[tag=!engineer] at @s if block ~ ~-1 ~ purple_terracotta run tag @s remove quick
execute as @a[tag=!engineer] at @s if block ~ ~-1 ~ purple_terracotta run tag @s remove sword
execute as @a[tag=!engineer] at @s if block ~ ~-1 ~ purple_terracotta run tag @s remove healer
execute as @a[tag=!engineer] at @s if block ~ ~-1 ~ purple_terracotta run tag @s remove splasher
execute as @a[tag=!engineer] at @s if block ~ ~-1 ~ purple_terracotta run tag @s add engineer

execute as @a[team=!spec,team=!Admin,team=!Owner,gamemode=!spectator] if score playing playing matches 1 unless score preround preround > preroundstop preround at @s if block ~ ~0.1 ~ minecraft:water run damage @s 6 minecraft:generic_kill

scoreboard players set @a[team=spec] TeamPick 0
scoreboard players set @a[team=Admin] TeamPick 3
scoreboard players set @a[team=Purple] TeamPick 1
scoreboard players set @a[team=Yellow] TeamPick 2
execute as @e[type=item,name="Carrot on a Stick"] at @s if block ~ ~0.1 ~ minecraft:water run tp @s @r[team=Yellow,limit=1]
execute as @e[type=item,name="Carrot on a Stick"] at @s if score @p TeamPick matches 1 unless block ~ ~-0.1 ~ air run data merge entity @s {PickupDelay:10000}
execute as @e[type=item,name="Carrot on a Stick"] at @s if score @p TeamPick matches 2 unless block ~ ~-0.1 ~ air run data merge entity @s {PickupDelay:0}
kill @e[type=item,name="Bow"]
kill @e[type=item,name="Crossbow"]
kill @e[type=item,name="Wooden Sword"]
kill @e[type=item,name="Arrow"]
kill @e[type=item,name="Shears"]
kill @e[type=item,name="Splash Uncraftable Potion"]
kill @e[type=item,name="Uncraftable Potion"]
kill @e[type=item,name="Lingering Uncraftable Potion"]
kill @e[type=item,name="Glass Bottle"]
kill @e[type=item,name="Redstone Torch"]
kill @e[type=item,name="Stick"]
kill @e[type=item,name="Warped Fungus on a Stick"]
kill @e[type=item,name="Tropical Fish"]
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=spectral_arrow,nbt={inGround:1b}]

bossbar set minecraft:12 players @a
bossbar set minecraft:12 name [{"text":"--- ","color":"gray"},{"text":"Purple | ","color":"dark_purple"},{"score":{"name":"Purple","objective":"Wins"},"color":"#d285ff","bold":true},{"text":" - ","bold":true,"color":"dark_gray"},{"score":{"name":"Yellow","objective":"Wins"},"color":"#fffeb4","bold":true},{"text":" | Yellow","color":"yellow"} ,{"text":" ---","color":"gray"}]