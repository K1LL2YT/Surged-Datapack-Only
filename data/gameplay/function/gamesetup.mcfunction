# Tp Plyaers
## Map 1
execute as @a[team=Yellow] if score mapselect mapselect matches 1 at @s run tp 94.00 -35.00 -107.00
execute as @a[team=Purple] if score mapselect mapselect matches 1 at @s run tp 12.00 -35.00 -107.00
clear @a[team=!Admin,team=!Owner]
## Map 2
execute as @a[team=Yellow] if score mapselect mapselect matches 2 at @s run tp 174 -27 92
execute as @a[team=Purple] if score mapselect mapselect matches 2 at @s run tp 174 -27 -33
clear @a[team=!Admin,team=!Owner]
## Map 3
execute as @a[team=Yellow] if score mapselect mapselect matches 3 at @s run tp -103 -43 -110
execute as @a[team=Purple] if score mapselect mapselect matches 3 at @s run tp -274 -38.00 -129
clear @a[team=!Admin,team=!Owner]
## Map 4
execute as @a[team=Yellow] if score mapselect mapselect matches 4 at @s run tp 52 -31 130
execute as @a[team=Purple] if score mapselect mapselect matches 4 at @s run tp 26 -31 235
clear @a[team=!Admin,team=!Owner]
## Map 5
execute as @a[team=Yellow] if score mapselect mapselect matches 5 at @s run tp 158 -24 -179
execute as @a[team=Purple] if score mapselect mapselect matches 5 at @s run tp 266 -24 -179
clear @a[team=!Admin,team=!Owner]


# Giving Items
function gamefuntions:kitsitem

# Glass for Countdown
## Map 1
execute if score mapselect mapselect matches 1 run fill 96 -36 -105 91 -32 -110 black_stained_glass replace minecraft:structure_void
execute if score mapselect mapselect matches 1 run fill 14 -36 -105 9 -32 -110 black_stained_glass replace minecraft:structure_void

## Map 2
execute if score mapselect mapselect matches 2 run fill 170 -30 -37 178 -26 -29 black_stained_glass replace minecraft:structure_void
execute if score mapselect mapselect matches 2 run fill 178 -30 96 170 -26 88 black_stained_glass replace minecraft:structure_void

## Map 3
execute if score mapselect mapselect matches 3 run fill -120 -42 -114 -120 -43 -114 black_stained_glass replace minecraft:structure_void
execute if score mapselect mapselect matches 3 run fill -262 -35 -138 -263 -37 -127 black_stained_glass replace minecraft:structure_void

## Map 5
execute if score mapselect mapselect matches 5 run fill 161 -22 -180 161 -24 -178 black_stained_glass replace minecraft:structure_void
execute if score mapselect mapselect matches 5 run fill 263 -22 -178 263 -24 -180 black_stained_glass replace minecraft:structure_void


gamemode adventure @a[team=!Admin,team=!spec,team=!Owner]