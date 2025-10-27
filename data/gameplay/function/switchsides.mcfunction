
execute if score Round RoundsToSwitch > Switch RoundsToSwitch if score Side RoundsToSwitch matches 2 run scoreboard players set Side RoundsToSwitch 3
execute if score Round RoundsToSwitch > Switch RoundsToSwitch if score Side RoundsToSwitch matches 1 run scoreboard players set Side RoundsToSwitch 2
execute if score Round RoundsToSwitch > Switch RoundsToSwitch if score Side RoundsToSwitch matches 3 run scoreboard players set Side RoundsToSwitch 1

execute if score Round RoundsToSwitch > Switch RoundsToSwitch if score Side RoundsToSwitch matches 1 run tag @a[team=Yellow] add attacker
execute if score Round RoundsToSwitch > Switch RoundsToSwitch if score Side RoundsToSwitch matches 1 run tag @a[team=Yellow] remove defender
execute if score Round RoundsToSwitch > Switch RoundsToSwitch if score Side RoundsToSwitch matches 2 run tag @a[team=Yellow] remove attacker
execute if score Round RoundsToSwitch > Switch RoundsToSwitch if score Side RoundsToSwitch matches 2 run tag @a[team=Yellow] add defender

execute if score Round RoundsToSwitch > Switch RoundsToSwitch if score Side RoundsToSwitch matches 1 run tag @a[team=Purple] remove attacker
execute if score Round RoundsToSwitch > Switch RoundsToSwitch if score Side RoundsToSwitch matches 1 run tag @a[team=Purple] add defender
execute if score Round RoundsToSwitch > Switch RoundsToSwitch if score Side RoundsToSwitch matches 2 run tag @a[team=Purple] add attacker
execute if score Round RoundsToSwitch > Switch RoundsToSwitch if score Side RoundsToSwitch matches 2 run tag @a[team=Purple] remove defender

execute if score Round RoundsToSwitch > Switch RoundsToSwitch run title @a times 0s 3s 1s
execute if score Round RoundsToSwitch > Switch RoundsToSwitch run title @a title {"text":"ѕᴡɪᴛᴄʜɪɴɢ ѕɪᴅᴇѕ","bold":true,"color":"white"}
execute if score Round RoundsToSwitch > Switch RoundsToSwitch run title @a[tag=attacker] subtitle {"text":"ʏᴏᴜ ᴀʀᴇ ɴᴏᴡ ᴀᴛᴛᴀᴄᴋɪɴɢ","bold":true,"color":"red"}
execute if score Round RoundsToSwitch > Switch RoundsToSwitch run title @a[tag=defender] subtitle {"text":"ʏᴏᴜ ᴀʀᴇ ɴᴏᴡ ᴅᴇꜰᴇɴᴅɪɴɢ","bold":true,"color":"aqua"}

execute if score Round RoundsToSwitch > Switch RoundsToSwitch run scoreboard players set Round RoundsToSwitch 1
