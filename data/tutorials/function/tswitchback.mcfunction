# Figure it out.

execute if score mapselect mapselect matches 5 if score start tutorial matches 1 run scoreboard players set tutorial tutorial 901
execute if score mapselect mapselect matches 5 if score start tutorial matches 1 run scoreboard players set ended tutorial 0
execute if score mapselect mapselect matches 5 if score start tutorial matches 1 run scoreboard players set textstart tutorial 800
execute if score mapselect mapselect matches 5 if score start tutorial matches 1 run scoreboard players set cam1 tutorial 900
execute if score mapselect mapselect matches 5 if score start tutorial matches 1 run scoreboard players set cam2 tutorial 600
execute if score mapselect mapselect matches 5 if score start tutorial matches 1 run scoreboard players set cam3 tutorial 400
execute if score mapselect mapselect matches 5 if score start tutorial matches 1 run scoreboard players set cam4 tutorial 200
execute if score mapselect mapselect matches 5 if score start tutorial matches 1 run scoreboard players set cam5 tutorial -5

execute if score mapselect mapselect matches 5 if score tutorial tutorial matches 901 run scoreboard players set start tutorial 0
execute if score mapselect mapselect matches 5 if score tutorial tutorial matches 901 run effect give @a invisibility infinite 0 true
execute if score mapselect mapselect matches 5 if score tutorial tutorial matches 901 run team modify Yellow seeFriendlyInvisibles false
execute if score mapselect mapselect matches 5 if score tutorial tutorial matches 901 run team modify Purple seeFriendlyInvisibles false
execute if score mapselect mapselect matches 5 if score tutorial tutorial matches 901 run title @a times 0.2s 4s 0.5s
execute as @a if score mapselect mapselect matches 5 if score tutorial tutorial matches 901 at @s run playsound minecraft:ost.tutoriallofi voice @s ~ ~ ~ 0.1
execute if score mapselect mapselect matches 5 if score tutorial tutorial matches 901 run title @a subtitle {"text":"ʙᴜɪʟᴅ ʙʏ: ɢᴀᴍɪɴɢɢᴜʏ","italic":true,"color":"gray"}
execute if score mapselect mapselect matches 5 if score tutorial tutorial matches 901 run title @a title [{"text":"ѕᴡɪᴛᴄʜ","bold":true,"color":"red"},{"text":"ʙᴀᴄᴋ","bold":true,"color":"blue"}]

execute as @a if score mapselect mapselect matches 5 if score camera camera matches 1 at @s run tp @a 204 -22 -187 -45 -11
execute as @a if score mapselect mapselect matches 5 if score camera camera matches 2 at @s run tp @a 171 -24 -179 -90 0
execute as @a if score mapselect mapselect matches 5 if score camera camera matches 3 at @s run tp @a 170 -10 -138 -137 61
execute as @a if score mapselect mapselect matches 5 if score camera camera matches 4 at @s run tp @a 221 -20 -224 45 26

execute if score mapselect mapselect matches 5 if score tutorial tutorial = cam1 tutorial run scoreboard players set camera camera 1
execute if score mapselect mapselect matches 5 if score tutorial tutorial = cam2 tutorial run scoreboard players set camera camera 2
execute if score mapselect mapselect matches 5 if score tutorial tutorial = cam3 tutorial run scoreboard players set camera camera 3
execute if score mapselect mapselect matches 5 if score tutorial tutorial = cam4 tutorial run scoreboard players set camera camera 4
execute if score mapselect mapselect matches 5 if score tutorial tutorial = ending tutorial run scoreboard players set camera camera 0

execute if score mapselect mapselect matches 5 if score tutorial tutorial = textstart tutorial run tellraw @a [{"text":"\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n","color":"dark_gray"},{"text":"💣 PLANTING & DEFUSING 💣\n\n","color":"red","bold":true},{"text":"• ","color":"gray"},{"text":"Attackers can PLANT by crouching with the bomb in a site.\n","color":"yellow"},{"text":"• ","color":"gray"},{"text":"Defenders can DEFUSE by holding shears near the bomb.\n","color":"aqua"},{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n","color":"dark_gray"}]
execute if score mapselect mapselect matches 5 if score tutorial tutorial = cam2 tutorial run tellraw @a [  {"text":"\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n","color":"dark_gray"},  {"text":"🏆 WIN CONDITIONS 🏆\n\n","color":"gold","bold":true},  {"text":"Attackers: ","color":"red","bold":true},  {"text":"Plant & defend the bomb OR eliminate defenders.\n","color":"white"},  {"text":"Defenders: ","color":"aqua","bold":true},  {"text":"Hold sites for 2 minutes and 30 seconds, defuse the bomb, OR eliminate attackers.\n\n","color":"white"},  {"text":"First to ","color":"gray"},  {"text":"6 wins","color":"yellow","bold":true},  {"text":" takes the game!\n","color":"gray"}, {"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n","color":"dark_gray"}]
execute if score mapselect mapselect matches 5 if score tutorial tutorial = cam3 tutorial run tellraw @a [  {"text":"\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n","color":"dark_gray"},  {"text":"📍 THE BOMB SITES 📍\n\n","color":"light_purple","bold":true},  {"text":"• ","color":"gray"},{"text":"There are TWO sites to attack or defend.\n","color":"white"},  {"text":"• ","color":"gray"},{"text":"They are located on OPPOSITE sides of the map.\n","color":"yellow"}, {"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n","color":"dark_gray"}]
execute if score mapselect mapselect matches 5 if score tutorial tutorial = cam4 tutorial run tellraw @a [  {"text":"\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n","color":"dark_gray"},{"text":"🎯 FLIPPABLE COVER 🎯\n\n","color":"light_purple","bold":true},{"text":"• ","color":"gray"},{"text":"Shoot the target near the cover to flip its side.\n","color":"white"},{"text":"• ","color":"gray"},{"text":"The cover switches between RED and BLUE when hit.\n","color":"yellow"},{"text":"• ","color":"gray"},{"text":"Use it tactically — flip it to protect your team or expose the enemy!\n","color":"white"}, {"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n","color":"dark_gray"}]
execute if score mapselect mapselect matches 5 if score tutorial tutorial = ending tutorial if score ended tutorial matches 0 run function ui:fadeui

execute as @a if score mapselect mapselect matches 5 if score tutorial tutorial matches 799 at @s run playsound block.beehive.exit record @s ~ ~ ~ 0.5
execute as @a if score mapselect mapselect matches 5 if score tutorial tutorial matches 599 at @s run playsound block.beehive.exit record @s ~ ~ ~ 0.5
execute as @a if score mapselect mapselect matches 5 if score tutorial tutorial matches 399 at @s run playsound block.beehive.exit record @s ~ ~ ~ 0.5
execute as @a if score mapselect mapselect matches 5 if score tutorial tutorial matches 199 at @s run playsound block.beehive.exit record @s ~ ~ ~ 0.5
execute as @a if score mapselect mapselect matches 5 if score tutorial tutorial = tutorialend tutorial if score ended tutorial matches 0 at @s run playsound block.beehive.exit record @s ~ ~ ~ 0.5
execute as @a if score mapselect mapselect matches 5 if score tutorial tutorial = ending tutorial if score ended tutorial matches 0 at @s run stopsound @a voice minecraft:ost.tutoriallofi


execute if score mapselect mapselect matches 5 if score tutorial tutorial = ending tutorial if score ended tutorial matches 0 run effect clear @a invisibility
execute if score mapselect mapselect matches 5 if score tutorial tutorial = ending tutorial if score ended tutorial matches 0 run team modify Yellow seeFriendlyInvisibles true
execute if score mapselect mapselect matches 5 if score tutorial tutorial = ending tutorial if score ended tutorial matches 0 run team modify Yellow seeFriendlyInvisibles true

execute if score mapselect mapselect matches 5 if score tutorial tutorial = ended tutorial unless score playing playing matches 1 run function gameplay:gamesetup
execute if score mapselect mapselect matches 5 if score tutorial tutorial = ended tutorial unless score playing playing matches 1 run function gamefuntions:reset

execute if score mapselect mapselect matches 5 if score tutorial tutorial = ending tutorial run scoreboard players set ended tutorial 1
execute if score mapselect mapselect matches 5 unless score tutorial tutorial = tutorialend tutorial run scoreboard players remove tutorial tutorial 1
