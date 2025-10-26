execute as @a[team=!Admin,team=!Owner] if score playing playing matches 0 if score tutorial tutorial = tutorialend tutorial run item replace entity @s container.3 with minecraft:armadillo_scute
execute as @a[team=!Admin,team=!Owner] if score playing playing matches 0 if score tutorial tutorial = tutorialend tutorial run item replace entity @s container.8 with minecraft:compass
execute as @a[team=!Admin,team=!Owner] if score playing playing matches 0 if score tutorial tutorial = tutorialend tutorial run item replace entity @s container.2 with minecraft:iron_nugget
execute as @a[team=!Admin,team=!Owner] if score playing playing matches 0 if score tutorial tutorial = tutorialend tutorial run item replace entity @s container.1 with minecraft:gold_nugget
execute as @a[team=!Admin,team=!Owner] if score playing playing matches 0 if score tutorial tutorial = tutorialend tutorial run item replace entity @s container.0 with minecraft:sunflower
execute as @a[team=!Admin,team=!Owner] if score playing playing matches 0 if score tutorial tutorial = tutorialend tutorial run item replace entity @s player.cursor with minecraft:air
execute as @a[team=!Admin,team=!Owner] if score playing playing matches 0 if score tutorial tutorial = tutorialend tutorial run item replace entity @s weapon.offhand with minecraft:air
execute as @a[team=!Admin,team=!Owner] if score playing playing matches 0 if score tutorial tutorial = tutorialend tutorial run item replace entity @s container.9 with minecraft:air
execute as @a[team=!Admin,team=!Owner] if score playing playing matches 0 if score tutorial tutorial = tutorialend tutorial run item replace entity @s player.crafting.0 with minecraft:air
execute as @a[team=!Admin,team=!Owner] if score playing playing matches 0 if score tutorial tutorial = tutorialend tutorial run item replace entity @s player.crafting.1 with minecraft:air
execute as @a[team=!Admin,team=!Owner] if score playing playing matches 0 if score tutorial tutorial = tutorialend tutorial run item replace entity @s player.crafting.2 with minecraft:air
execute as @a[team=!Admin,team=!Owner] if score playing playing matches 0 if score tutorial tutorial = tutorialend tutorial run item replace entity @s player.crafting.3 with minecraft:air

kill @e[name="Armadillo Scute"]
kill @e[name="Compass"]
kill @e[name="Iron Nugget"]
kill @e[name="Gold Nugget"]
kill @e[name="Sunflower"]

execute as @a if score @s kitspawn matches 1.. run item replace entity @s container.0 with minecraft:sunflower[custom_name='"Kit Selection"']
execute as @a if score @s settingspawn matches 1.. run item replace entity @s container.1 with minecraft:gold_nugget[custom_name='"Setting/Start Game"']
execute as @a if score @s announcerspawn matches 1.. run item replace entity @s container.2 with minecraft:iron_nugget[custom_name='"Announcers"']
execute as @a if score @s centerspawn matches 1.. run item replace entity @s container.8 with minecraft:compass[custom_name='"Center Spawn"']
execute as @a if score @s singlespawn matches 1.. run item replace entity @s container.3 with minecraft:armadillo_scute[custom_name='"Singleplayer (Coming Soon)"']

execute as @a if score @s kitspawn matches 1.. run tp @s -91 -57 164 0 0
execute as @a if score @s settingspawn matches 1.. run tp @s -144 -60 115 45 0
execute as @a if score @s announcerspawn matches 1.. run tp @s -135 -60 57 135 0
execute as @a if score @s centerspawn matches 1.. run tp @s -98 -59 90 0 0
execute as @a if score @s singlespawn matches 1.. run tp @s -67.00 -60.00 24 180 0

scoreboard players set @a kitspawn 0
scoreboard players set @a settingspawn 0
scoreboard players set @a announcerspawn 0
scoreboard players set @a centerspawn 0
scoreboard players set @a singlespawn 0