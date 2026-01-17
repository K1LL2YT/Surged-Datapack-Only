# Im not explaining all of this... Just read it and good luck.

# Teams stuff
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
execute as @a[tag=!healer,tag=!recon,tag=!multi,tag=!quick,tag=!sword,tag=!splasher,tag=!engineer,tag=!jugg,tag=!ninja] at @s run tellraw @s ["",{"text":"-----------------------------------------------------","color":"dark_red"},{"text":"\n  \ud83d\udca3 "},{"text":"\u1d21\u1d07\u029f\u1d04\u1d0f\u1d0d\u1d07 \u1d1b\u1d0f \u0455\u1d1c\u0280\u0262\u1d07","color":"#FFDB8B"},{"text":" \ud83d\udca3\n\n"},{"text":"Since this is your first time joining the server, you have been given the ","italic":true,"color":"gray"},{"text":"Healer ","italic":true,"color":"green"},{"text":"kit. You can change it by walking over to any of the other Kits and stepping on them.","italic":true,"color":"gray"},{"text":"\n"},{"text":"-----------------------------------------------------","color":"dark_red"}]
execute as @a[tag=!healer,tag=!recon,tag=!multi,tag=!quick,tag=!sword,tag=!splasher,tag=!engineer,tag=!jugg,tag=!ninja] at @s run tag @s add healer

## Recon
execute as @a[tag=!recon] at @s unless score playing playing matches 1 if block ~ ~-1 ~ cyan_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Recon","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Bow - Punch 1", "color": "white"},{"text":"\n"},{"text":"Recon Tower - Shift to place | Glows Enemy around it."},{"text":"\n"},{"text":"Ult - Glow Enemy teams for 7 Seconds"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!recon] at @s unless score playing playing matches 1 if block ~ ~-1 ~ cyan_terracotta run tag @s remove healer
execute as @a[tag=!recon] at @s unless score playing playing matches 1 if block ~ ~-1 ~ cyan_terracotta run tag @s remove multi
execute as @a[tag=!recon] at @s unless score playing playing matches 1 if block ~ ~-1 ~ cyan_terracotta run tag @s remove quick
execute as @a[tag=!recon] at @s unless score playing playing matches 1 if block ~ ~-1 ~ cyan_terracotta run tag @s remove sword
execute as @a[tag=!recon] at @s unless score playing playing matches 1 if block ~ ~-1 ~ cyan_terracotta run tag @s remove splasher
execute as @a[tag=!recon] at @s unless score playing playing matches 1 if block ~ ~-1 ~ cyan_terracotta run tag @s remove engineer
execute as @a[tag=!recon] at @s unless score playing playing matches 1 if block ~ ~-1 ~ cyan_terracotta run tag @s remove jugg
execute as @a[tag=!recon] at @s unless score playing playing matches 1 if block ~ ~-1 ~ cyan_terracotta run tag @s remove ninja
execute as @a[tag=!recon] at @s unless score playing playing matches 1 if block ~ ~-1 ~ cyan_terracotta run tag @s add recon

## Multi-shot
execute as @a[tag=!multi] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_blue_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Multi-Shot","bold":true,"color":"red"},{"text":"\n"},{"text":"Crossbow - Multishot", "color": "white"},{"text":"\n"},{"text":"Ult - Rocket Bows for 5 Seconds"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!multi] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_blue_terracotta run tag @s remove healer
execute as @a[tag=!multi] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_blue_terracotta run tag @s remove recon
execute as @a[tag=!multi] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_blue_terracotta run tag @s remove quick
execute as @a[tag=!multi] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_blue_terracotta run tag @s remove sword
execute as @a[tag=!multi] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_blue_terracotta run tag @s remove splasher
execute as @a[tag=!multi] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_blue_terracotta run tag @s remove engineer
execute as @a[tag=!multi] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_blue_terracotta run tag @s remove jugg
execute as @a[tag=!multi] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_blue_terracotta run tag @s remove ninja
execute as @a[tag=!multi] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_blue_terracotta run tag @s add multi

## Quick Charge
execute as @a[tag=!quick] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_gray_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Quick Charge","bold":true,"color":"blue"},{"text":"\n"},{"text":"Crossbow - Quick Charge 3", "color": "white"},{"text":"\n"},{"text":"Ult - 3 Poison Crossbows"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!quick] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_gray_terracotta run tag @s remove healer
execute as @a[tag=!quick] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_gray_terracotta run tag @s remove recon
execute as @a[tag=!quick] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_gray_terracotta run tag @s remove multi
execute as @a[tag=!quick] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_gray_terracotta run tag @s remove sword
execute as @a[tag=!quick] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_gray_terracotta run tag @s remove splasher
execute as @a[tag=!quick] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_gray_terracotta run tag @s remove engineer
execute as @a[tag=!quick] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_gray_terracotta run tag @s remove jugg
execute as @a[tag=!quick] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_gray_terracotta run tag @s remove ninja
execute as @a[tag=!quick] at @s unless score playing playing matches 1 if block ~ ~-1 ~ light_gray_terracotta run tag @s add quick

## Melee
execute as @a[tag=!sword] at @s unless score playing playing matches 1 if block ~ ~-1 ~ green_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Melee","bold":true,"color":"gold"},{"text":"\n"},{"text":"Dagger - Sharp 5", "color": "white"},{"text":"\n"},{"text":"Speed Potion"},{"text":"\n"},{"text":"Ult - Stregnth for 5 seconds"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!sword] at @s unless score playing playing matches 1 if block ~ ~-1 ~ green_terracotta run tag @s remove healer
execute as @a[tag=!sword] at @s unless score playing playing matches 1 if block ~ ~-1 ~ green_terracotta run tag @s remove recon
execute as @a[tag=!sword] at @s unless score playing playing matches 1 if block ~ ~-1 ~ green_terracotta run tag @s remove multi
execute as @a[tag=!sword] at @s unless score playing playing matches 1 if block ~ ~-1 ~ green_terracotta run tag @s remove quick
execute as @a[tag=!sword] at @s unless score playing playing matches 1 if block ~ ~-1 ~ green_terracotta run tag @s remove splasher
execute as @a[tag=!sword] at @s unless score playing playing matches 1 if block ~ ~-1 ~ green_terracotta run tag @s remove engineer
execute as @a[tag=!sword] at @s unless score playing playing matches 1 if block ~ ~-1 ~ green_terracotta run tag @s remove jugg
execute as @a[tag=!sword] at @s unless score playing playing matches 1 if block ~ ~-1 ~ green_terracotta run tag @s remove ninja
execute as @a[tag=!sword] at @s unless score playing playing matches 1 if block ~ ~-1 ~ green_terracotta run tag @s add sword

## Healer
execute as @a[tag=!healer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ lime_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Healer","bold":true,"color":"green"},{"text":"\n"},{"text":"Bow", "color": "white"},{"text":"\n"},{"text":"2 Heal Potion"},{"text":"\n"},{"text":"1 Self Heal Potion"},{"text":"\n"},{"text":"Knockback Nemo - Knockback 2"},{"text":"\n"},{"text":"Ult - Heals Team with Regen 2 for 20 seconds"},{"text":"\n"},{"text":"Health Change: Has 15 HP"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!healer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ lime_terracotta run tag @s remove recon
execute as @a[tag=!healer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ lime_terracotta run tag @s remove multi
execute as @a[tag=!healer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ lime_terracotta run tag @s remove quick
execute as @a[tag=!healer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ lime_terracotta run tag @s remove sword
execute as @a[tag=!healer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ lime_terracotta run tag @s remove splasher
execute as @a[tag=!healer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ lime_terracotta run tag @s remove engineer
execute as @a[tag=!healer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ lime_terracotta run tag @s remove jugg
execute as @a[tag=!healer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ lime_terracotta run tag @s remove ninja
execute as @a[tag=!healer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ lime_terracotta run tag @s add healer

## Potion Master
execute as @a[tag=!splasher] at @s unless score playing playing matches 1 if block ~ ~-1 ~ orange_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Potion Master","bold":true,"color":"#a57ebe"},{"text":"\n"},{"text":"Dagger - Sharp 1", "color": "white"},{"text":"\n"},{"text":"2 Lingering Potions - Resistance"},{"text":"\n"},{"text":"2 Lingering Potions - Poison"},{"text":"\n"},{"text":"2 Lingering Potions - Slowness"},{"text":"\n"},{"text":"Self Heal Potions"},{"text":"\n"},{"text":"Ult - Blind Other team for 10 seconds"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!splasher] at @s unless score playing playing matches 1 if block ~ ~-1 ~ orange_terracotta run tag @s remove recon
execute as @a[tag=!splasher] at @s unless score playing playing matches 1 if block ~ ~-1 ~ orange_terracotta run tag @s remove multi
execute as @a[tag=!splasher] at @s unless score playing playing matches 1 if block ~ ~-1 ~ orange_terracotta run tag @s remove quick
execute as @a[tag=!splasher] at @s unless score playing playing matches 1 if block ~ ~-1 ~ orange_terracotta run tag @s remove sword
execute as @a[tag=!splasher] at @s unless score playing playing matches 1 if block ~ ~-1 ~ orange_terracotta run tag @s remove healer
execute as @a[tag=!splasher] at @s unless score playing playing matches 1 if block ~ ~-1 ~ orange_terracotta run tag @s remove engineer
execute as @a[tag=!splasher] at @s unless score playing playing matches 1 if block ~ ~-1 ~ orange_terracotta run tag @s remove jugg
execute as @a[tag=!splasher] at @s unless score playing playing matches 1 if block ~ ~-1 ~ orange_terracotta run tag @s remove ninja
execute as @a[tag=!splasher] at @s unless score playing playing matches 1 if block ~ ~-1 ~ orange_terracotta run tag @s add splasher

## Engineer
execute as @a[tag=!engineer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ purple_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Engineer","bold":true,"color":"#cf6b43"},{"text":"\n"},{"text":"Bow - Punch 2", "color": "white"},{"text":"\n"},{"text":"Can Plant/Defuse Faster"},{"text":"\n"},{"text":"Ult - Resistance 2 and Speed 2 for 30 seconds"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!engineer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ purple_terracotta run tag @s remove recon
execute as @a[tag=!engineer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ purple_terracotta run tag @s remove multi
execute as @a[tag=!engineer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ purple_terracotta run tag @s remove quick
execute as @a[tag=!engineer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ purple_terracotta run tag @s remove sword
execute as @a[tag=!engineer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ purple_terracotta run tag @s remove healer
execute as @a[tag=!engineer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ purple_terracotta run tag @s remove splasher
execute as @a[tag=!engineer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ purple_terracotta run tag @s remove jugg
execute as @a[tag=!engineer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ purple_terracotta run tag @s remove ninja
execute as @a[tag=!engineer] at @s unless score playing playing matches 1 if block ~ ~-1 ~ purple_terracotta run tag @s add engineer

## Juggernaunt
execute as @a[tag=!jugg] at @s unless score playing playing matches 1 if block ~ ~-1 ~ black_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Juggernaunt","bold":true,"color":"#c075f3"},{"text":"\n"},{"text":"Dagger - Sharp 3", "color": "white"},{"text":"\n"},{"text":"Full Projectile Prot Iron"},{"text":"\n"},{"text":"Ult - Resistance 3 for 10 Seconds"},{"text":"\n"},{"text":"Health Change: Has 7 HP"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!jugg] at @s unless score playing playing matches 1 if block ~ ~-1 ~ black_terracotta run tag @s remove recon
execute as @a[tag=!jugg] at @s unless score playing playing matches 1 if block ~ ~-1 ~ black_terracotta run tag @s remove multi
execute as @a[tag=!jugg] at @s unless score playing playing matches 1 if block ~ ~-1 ~ black_terracotta run tag @s remove quick
execute as @a[tag=!jugg] at @s unless score playing playing matches 1 if block ~ ~-1 ~ black_terracotta run tag @s remove sword
execute as @a[tag=!jugg] at @s unless score playing playing matches 1 if block ~ ~-1 ~ black_terracotta run tag @s remove healer
execute as @a[tag=!jugg] at @s unless score playing playing matches 1 if block ~ ~-1 ~ black_terracotta run tag @s remove splasher
execute as @a[tag=!jugg] at @s unless score playing playing matches 1 if block ~ ~-1 ~ black_terracotta run tag @s remove engineer
execute as @a[tag=!jugg] at @s unless score playing playing matches 1 if block ~ ~-1 ~ black_terracotta run tag @s remove ninja
execute as @a[tag=!jugg] at @s unless score playing playing matches 1 if block ~ ~-1 ~ black_terracotta run tag @s add jugg

## ninja
execute as @a[tag=!ninja] at @s unless score playing playing matches 1 if block ~ ~-1 ~ brown_terracotta run tellraw @s ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Kit Selected","italic":true},{"text":"\n"},{"text":"Ninja","bold":true,"color":"#625f85"},{"text":"\n"},{"text":"Dagger - Sharp 3", "color": "white"},{"text":"\n"},{"text":"Sneak will make you Invis"},{"text":"\n"},{"text":"Crouching for 5 seconds will make you glow"},{"text":"\n"},{"text":"Ult - Make team invis for 10 seconds"},{"text":"\n"},{"text":"Health Change: Has 5 HP"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute as @a[tag=!ninja] at @s unless score playing playing matches 1 if block ~ ~-1 ~ brown_terracotta run tag @s remove recon
execute as @a[tag=!ninja] at @s unless score playing playing matches 1 if block ~ ~-1 ~ brown_terracotta run tag @s remove multi
execute as @a[tag=!ninja] at @s unless score playing playing matches 1 if block ~ ~-1 ~ brown_terracotta run tag @s remove quick
execute as @a[tag=!ninja] at @s unless score playing playing matches 1 if block ~ ~-1 ~ brown_terracotta run tag @s remove sword
execute as @a[tag=!ninja] at @s unless score playing playing matches 1 if block ~ ~-1 ~ brown_terracotta run tag @s remove healer
execute as @a[tag=!ninja] at @s unless score playing playing matches 1 if block ~ ~-1 ~ brown_terracotta run tag @s remove splasher
execute as @a[tag=!ninja] at @s unless score playing playing matches 1 if block ~ ~-1 ~ brown_terracotta run tag @s remove jugg
execute as @a[tag=!ninja] at @s unless score playing playing matches 1 if block ~ ~-1 ~ brown_terracotta run tag @s remove engineer
execute as @a[tag=!ninja] at @s unless score playing playing matches 1 if block ~ ~-1 ~ brown_terracotta run tag @s add ninja

execute as @a[tag=ninja] at @s if score playing playing matches 1 if score @s sneaktime matches 1 run effect give @s invisibility 1 0 true
execute as @a[tag=ninja] at @s if score playing playing matches 1 if score @s sneaktime matches 0 run effect clear @s
execute as @a[tag=ninja] at @s if score playing playing matches 1 run effect give @s speed 2 3 true

# Water Damage
execute as @a[team=!spec,team=!Admin,team=!Owner,gamemode=!spectator] unless score mapselect mapselect matches 7 if score playing playing matches 1 unless score preround preround > preroundstop preround at @s if block ~ ~0.1 ~ minecraft:water run damage @s 6 minecraft:generic_kill

# Things that don't need a list.
scoreboard players set @a[team=spec] TeamPick 0
scoreboard players set @a[team=Admin] TeamPick 3
scoreboard players set @a[tag=defender] TeamPick 1
scoreboard players set @a[tag=attacker] TeamPick 2
execute as @e[type=item,name="Carrot on a Stick"] at @s if block ~ ~0.1 ~ minecraft:water run tp @s @r[tag=attacker,limit=1]
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
kill @e[type=item,name="Iron Chestplate"]
kill @e[type=item,name="Iron Leggings"]
kill @e[type=item,name="Iron Boots"]
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=spectral_arrow,nbt={inGround:1b}]

execute as @a[team=!Admin,team=!Owner] if score playing playing matches 1 if score @s InGame matches 0 run team join spec @s
execute as @a[team=!Admin,team=!Owner] if score playing playing matches 1 if score @s InGame matches 0 run tag @s remove attacker
execute as @a[team=!Admin,team=!Owner] if score playing playing matches 1 if score @s InGame matches 0 run tag @s remove defender

bossbar set minecraft:12 players @a
bossbar set minecraft:12 name [{"text":"--- ","color":"gray"},{"text":"The Volts | ","color":"dark_purple"},{"score":{"name":"Purple","objective":"Wins"},"color":"#d285ff","bold":true},{"text":" - ","bold":true,"color":"dark_gray"},{"score":{"name":"Yellow","objective":"Wins"},"color":"#fffeb4","bold":true},{"text":" | The Zappers","color":"yellow"} ,{"text":" ---","color":"gray"}]