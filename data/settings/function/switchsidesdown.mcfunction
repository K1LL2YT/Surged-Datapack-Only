scoreboard players remove Switch RoundsToSwitch 1

execute unless score Switch RoundsToSwitch matches ..2 run tellraw @a ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Rounds till Switch set to:","italic":true},{"text":"\n"},{"score":{"name":"Switch","objective":"RoundsToSwitch"},"color":"white","bold": true},{"text":"\n"},{"text":"----------","color":"gray"}]
execute if score Switch RoundsToSwitch matches ..2 run tellraw @a {"text":"ᴄᴀɴ'ᴛ ɢᴏ ᴀɴʏ ꜰᴜʀᴛʜᴇʀ!!!","italic":false,"bold":true,"color":"red"}
execute if score Switch RoundsToSwitch matches ..2 run scoreboard players set Switch RoundsToSwitch 3