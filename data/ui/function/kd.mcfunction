# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
#  Calculate K/D ratio (scaled by 10)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

# Reset temporary values
scoreboard players set @s KD_temp 0
scoreboard players set @s KD_scaled 0
scoreboard players set @s KD_display 0

# Avoid division by zero
execute if score @s careerdeaths matches 0 run scoreboard players set @s careerdeaths 1

# Multiply kills by 10
scoreboard players operation @s KD_scaled = @s careerkills
scoreboard players operation @s KD_scaled *= #10 CONST10

# Divide by deaths
scoreboard players operation @s KD_scaled /= @s careerdeaths

# Extract decimal part
scoreboard players operation @s KD_display = @s KD_scaled
scoreboard players operation @s KD_display %= #10 CONST10

# Extract whole number part
scoreboard players operation @s KD_temp = @s KD_scaled
scoreboard players operation @s KD_temp /= #10 CONST10