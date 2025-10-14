scoreboard objectives add time dummy
scoreboard objectives add sec dummy
scoreboard objectives add min dummy
scoreboard objectives add const dummy

scoreboard players set #60 const 60

bossbar add game:timer "Timer"
bossbar set game:timer max 1
bossbar set game:timer value 0
