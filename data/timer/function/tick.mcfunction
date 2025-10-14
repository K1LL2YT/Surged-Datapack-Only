# reduce timer
execute if score #timer time matches 1.. run scoreboard players remove #timer time 1

# calculate minutes = time / 60
scoreboard players operation #min min = #timer time
scoreboard players operation #min min /= #60 const

# calculate seconds = time % 60
scoreboard players operation #sec sec = #timer time
scoreboard players operation #sec sec %= #60 const

# if seconds < 10 → display with leading zero
execute if score #sec sec matches ..9 run bossbar set game:timer name {"text":"","extra":[{"score":{"name":"#min","objective":"min"}},{"text":":0"},{"score":{"name":"#sec","objective":"sec"}}]}

# else → display normally
execute if score #sec sec matches 10.. run bossbar set game:timer name {"text":"","extra":[{"score":{"name":"#min","objective":"min"}},{"text":":"},{"score":{"name":"#sec","objective":"sec"}}]}

# keep ticking while time > 0
execute if score #timer time matches 1.. unless score pause pause matches 1 run schedule function timer:tick 1s
