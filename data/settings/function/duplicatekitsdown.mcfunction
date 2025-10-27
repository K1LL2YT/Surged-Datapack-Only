scoreboard players remove Duplicate Kit 1

execute unless score Duplicate Kit matches ..0 run tellraw @a ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Duplicate Kits Set to:","italic":true},{"text":"\n"},{"score":{"name":"Duplicate","objective":"Kit"},"color":"white","bold": true},{"text":"\n"},{"text":"----------","color":"gray"}]
execute if score Duplicate Kit matches ..0 run tellraw @a {"text":"ᴄᴀɴ'ᴛ ɢᴏ ᴀɴʏ ꜰᴜʀᴛʜᴇʀ!!!","italic":false,"bold":true,"color":"red"}
execute if score Duplicate Kit matches ..0 run scoreboard players set Duplicate Kit 1