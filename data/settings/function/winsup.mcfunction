scoreboard players add Wins RoundsToWin 1

execute unless score Wins RoundsToWin matches 16.. run tellraw @a ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Wins are set to:","italic":true},{"text":"\n"},{"score":{"name":"Wins","objective":"RoundsToWin"},"color":"white","bold": true},{"text":"\n"},{"text":"----------","color":"gray"}]
execute if score Wins RoundsToWin matches 16.. run tellraw @a {"text":"ᴄᴀɴ'ᴛ ɢᴏ ᴀɴʏ ꜰᴜʀᴛʜᴇʀ!!!","italic":false,"bold":true,"color":"red"}
execute if score Wins RoundsToWin matches 16.. run scoreboard players set Wins RoundsToWin 15