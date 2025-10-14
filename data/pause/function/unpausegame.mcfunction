execute if score pause pause matches 1 run scoreboard players set pause pause 0
tellraw @a [{"text":"ɢᴀᴍᴇ ʜᴀѕ ʙᴇᴇɴ ᴜɴᴘᴀᴜѕᴇᴅ.","italic":true,"bold":false,"color":"gray"}, {"text":"\n"}, {"text":"ɢᴇᴛ ʀᴇᴀᴅʏ!","italic":false,"bold":true,"color":"red"}]

scoreboard players set preround preround 200
scoreboard players set #timer time 10
schedule function timer:tick 1s