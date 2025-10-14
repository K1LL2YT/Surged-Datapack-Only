# Arguments: set total time in seconds here
# Example: preround = 10, round = 120, bomb = 45

# calculate minutes + seconds
scoreboard players operation #min min = #timer time
scoreboard players operation #sec sec = #timer time

scoreboard players operation #min min /= #60 const
scoreboard players operation #sec sec %= #60 const

# show timer
bossbar set game:timer players @a

# start ticking
schedule function timer:tick 1s
