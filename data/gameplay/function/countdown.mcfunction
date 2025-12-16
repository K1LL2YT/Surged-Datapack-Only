# Text
execute if score preround preround matches 100 run title @a title {"text":"⋙    5    ⋘","color":"red"}
execute if score preround preround matches 80 run title @a title {"text":"⋙    4    ⋘","color":"red"}
execute if score preround preround matches 60 run title @a title {"text":"⋙    3    ⋘","color":"red"}
execute if score preround preround matches 40 run title @a title {"text":"⋙   2   ⋘","color":"gold"}
execute if score preround preround matches 20 run title @a title {"text":"⋙  1  ⋘","color":"yellow"}
execute if score preround preround matches 0 run title @a title {"text":"⋙ ɢᴏ ⋘","color":"green"}

# Times
execute if score preround preround matches 100 run title @a times 0s 1s .5s
execute if score preround preround matches 80 run title @a times 0s 1s .5s
execute if score preround preround matches 60 run title @a times 0s 1s .5s
execute if score preround preround matches 40 run title @a times 0s 1s .5s
execute if score preround preround matches 20 run title @a times 0s 1s .5s
execute if score preround preround matches 0 run title @a times 0s 1s .5s

# SFX
execute as @a if score preround preround matches 100 at @s run playsound minecraft:sfx.cdnormal record @s ~ ~ ~ 0.5
execute as @a if score preround preround matches 80 at @s run playsound minecraft:sfx.cdnormal record @s ~ ~ ~ 0.5
execute as @a if score preround preround matches 60 at @s run playsound minecraft:sfx.cdnormal record @s ~ ~ ~ 0.5
execute as @a if score preround preround matches 40 at @s run playsound minecraft:sfx.cdnormal record @s ~ ~ ~ 0.5
execute as @a if score preround preround matches 20 at @s run playsound minecraft:sfx.cdnormal record @s ~ ~ ~ 0.5
execute as @a if score preround preround matches 0 at @s run playsound minecraft:sfx.cdend record @s ~ ~ ~ 0.5

# Glass
## Map 1
### Attacker
execute if score mapselect mapselect matches 1 if score preround preround matches 60 run fill 96 -36 -105 91 -32 -110 red_stained_glass replace black_stained_glass 
execute if score mapselect mapselect matches 1 if score preround preround matches 40 run fill 96 -36 -105 91 -32 -110 orange_stained_glass replace red_stained_glass
execute if score mapselect mapselect matches 1 if score preround preround matches 20 run fill 96 -36 -105 91 -32 -110 yellow_stained_glass replace orange_stained_glass
execute if score mapselect mapselect matches 1 if score preround preround matches 0 run fill 96 -36 -105 91 -32 -110 structure_void replace yellow_stained_glass
### Defender
execute if score mapselect mapselect matches 1 if score preround preround matches 60 run fill 14 -36 -105 9 -32 -110 red_stained_glass replace black_stained_glass
execute if score mapselect mapselect matches 1 if score preround preround matches 40 run fill 14 -36 -105 9 -32 -110 orange_stained_glass replace red_stained_glass
execute if score mapselect mapselect matches 1 if score preround preround matches 20 run fill 14 -36 -105 9 -32 -110 yellow_stained_glass replace orange_stained_glass
execute if score mapselect mapselect matches 1 if score preround preround matches 0 run fill 14 -36 -105 9 -32 -110 structure_void replace yellow_stained_glass

## Map 2
### Attacker
execute if score mapselect mapselect matches 2 if score preround preround matches 60 run fill 178 -30 96 170 -26 88 red_stained_glass replace black_stained_glass 
execute if score mapselect mapselect matches 2 if score preround preround matches 40 run fill 178 -30 96 170 -26 88 orange_stained_glass replace red_stained_glass
execute if score mapselect mapselect matches 2 if score preround preround matches 20 run fill 178 -30 96 170 -26 88 yellow_stained_glass replace orange_stained_glass
execute if score mapselect mapselect matches 2 if score preround preround matches 0 run fill 178 -30 96 170 -26 88 structure_void replace yellow_stained_glass
### Defender
execute if score mapselect mapselect matches 2 if score preround preround matches 60 run fill 170 -30 -37 178 -26 -29 red_stained_glass replace black_stained_glass
execute if score mapselect mapselect matches 2 if score preround preround matches 40 run fill 170 -30 -37 178 -26 -29 orange_stained_glass replace red_stained_glass
execute if score mapselect mapselect matches 2 if score preround preround matches 20 run fill 170 -30 -37 178 -26 -29 yellow_stained_glass replace orange_stained_glass
execute if score mapselect mapselect matches 2 if score preround preround matches 0 run fill 170 -30 -37 178 -26 -29 structure_void replace yellow_stained_glass

## Map 3
### Attacker
execute if score mapselect mapselect matches 3 if score preround preround matches 60 run fill -120 -42 -114 -120 -43 -114 red_stained_glass replace black_stained_glass 
execute if score mapselect mapselect matches 3 if score preround preround matches 40 run fill -120 -42 -114 -120 -43 -114 orange_stained_glass replace red_stained_glass
execute if score mapselect mapselect matches 3 if score preround preround matches 20 run fill -120 -42 -114 -120 -43 -114 yellow_stained_glass replace orange_stained_glass
execute if score mapselect mapselect matches 3 if score preround preround matches 0 run fill -120 -42 -114 -120 -43 -114 structure_void replace yellow_stained_glass
### Defender
execute if score mapselect mapselect matches 3 if score preround preround matches 60 run fill -262 -35 -138 -263 -37 -127 red_stained_glass replace black_stained_glass
execute if score mapselect mapselect matches 3 if score preround preround matches 40 run fill -262 -35 -138 -263 -37 -127 orange_stained_glass replace red_stained_glass
execute if score mapselect mapselect matches 3 if score preround preround matches 20 run fill -262 -35 -138 -263 -37 -127 yellow_stained_glass replace orange_stained_glass
execute if score mapselect mapselect matches 3 if score preround preround matches 0 run fill -262 -35 -138 -263 -37 -127 structure_void replace yellow_stained_glass

## Map 4
### Attacker
execute if score mapselect mapselect matches 4 if score preround preround matches 100.. run clone 51 -20 137 47 -17 137 50 -31 134
execute if score mapselect mapselect matches 4 if score preround preround matches 0 run setblock 49 -26 121 minecraft:redstone_block
### Defender
execute if score mapselect mapselect matches 4 if score preround preround matches 100.. run clone 51 -20 137 47 -17 137 24 -31 231
execute if score mapselect mapselect matches 4 if score preround preround matches 0 run setblock 23 -26 239 minecraft:redstone_block

## Map 5
### Attacker
execute if score mapselect mapselect matches 5 if score preround preround matches 60 run fill 161 -22 -180 161 -24 -178 red_stained_glass replace black_stained_glass 
execute if score mapselect mapselect matches 5 if score preround preround matches 40 run fill 161 -22 -180 161 -24 -178 orange_stained_glass replace red_stained_glass
execute if score mapselect mapselect matches 5 if score preround preround matches 20 run fill 161 -22 -180 161 -24 -178 yellow_stained_glass replace orange_stained_glass
execute if score mapselect mapselect matches 5 if score preround preround matches 0 run fill 161 -22 -180 161 -24 -178 structure_void replace yellow_stained_glass
### Defender
execute if score mapselect mapselect matches 5 if score preround preround matches 60 run fill 263 -22 -178 263 -24 -180 red_stained_glass replace black_stained_glass
execute if score mapselect mapselect matches 5 if score preround preround matches 40 run fill 263 -22 -178 263 -24 -180 orange_stained_glass replace red_stained_glass
execute if score mapselect mapselect matches 5 if score preround preround matches 20 run fill 263 -22 -178 263 -24 -180 yellow_stained_glass replace orange_stained_glass
execute if score mapselect mapselect matches 5 if score preround preround matches 0 run fill 263 -22 -178 263 -24 -180 structure_void replace yellow_stained_glass

execute if score mapselect mapselect matches 6 if score preround preround matches 0 run fill -121 -56 466 -125 -59 466 minecraft:structure_void replace iron_bars
execute if score mapselect mapselect matches 6 if score preround preround matches 0 run fill -121 -56 295 -125 -59 295 minecraft:structure_void replace iron_bars