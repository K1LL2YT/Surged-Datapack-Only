# reduce timer
execute if score #timer time matches 1.. run scoreboard players remove #timer time 1

# calculate minutes = time / 60
scoreboard players operation #min min = #timer time
scoreboard players operation #min min /= #60 const

# calculate seconds = time % 60
scoreboard players operation #sec sec = #timer time
scoreboard players operation #sec sec %= #60 const

# if seconds < 10 → display with leading zero
execute if score #sec sec matches ..9 run bossbar set game:timer name {"text":"","extra":[{"score":{"name":"#min","objective":"min"},"bold":true,"color":"white"},{"text":":0","bold":true,"color":"white"},{"score":{"name":"#sec","objective":"sec"},"bold":true,"color":"white"}]}

# elseif → display normally
execute if score #sec sec matches 10.. run bossbar set game:timer name {"text":"","extra":[{"score":{"name":"#min","objective":"min"},"bold":true,"color":"white"},{"text":":","bold":true,"color":"white"},{"score":{"name":"#sec","objective":"sec"},"bold":true,"color":"white"}]}

# else min = 0 → display in red
execute if score #min min matches ..0 if score #sec sec matches 10..20 run bossbar set game:timer name {"text":"","extra":[{"score":{"name":"#min","objective":"min"},"bold":true,"color":"red"},{"text":":","bold":true,"color":"red"},{"score":{"name":"#sec","objective":"sec"},"bold":true,"color":"red"}]}
execute if score #min min matches ..0 if score #sec sec matches ..9 run bossbar set game:timer name {"text":"","extra":[{"score":{"name":"#min","objective":"min"},"bold":true,"color":"red"},{"text":":0","bold":true,"color":"red"},{"score":{"name":"#sec","objective":"sec"},"bold":true,"color":"red"}]}


# keep ticking while time > 0
execute if score #timer time matches 1.. unless score pause pause matches 1 run schedule function timer:tick 1s
