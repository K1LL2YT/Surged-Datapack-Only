# --------- Prepare temporaries (per player) ----------
# copy careerdeaths into a temp so we DON'T modify the real value
execute as @a run scoreboard players operation @s KD_denom = @s careerdeaths

# if temp denom is zero, set the temp to 1 (prevents division by 0, does NOT change careerdeaths)
execute as @a if score @s KD_denom matches 0 run scoreboard players set @s KD_denom 1

# --------- Compute scaled ratio (kills * 10 / deaths) ----------
# KD_scaled = careerkills
execute as @a run scoreboard players operation @s KD_scaled = @s careerkills

# KD_scaled *= const10 (multiply by 10 using the fake player const10)
execute as @a run scoreboard players operation @s KD_scaled *= const10 CONST

# KD_scaled /= KD_denom (divide by copied deaths)
execute as @a run scoreboard players operation @s KD_scaled /= @s KD_denom

# --------- Split into whole and fractional digits ----------
# KD_frac = KD_scaled % 10  (fractional digit)
execute as @a run scoreboard players operation @s KD_frac = @s KD_scaled
execute as @a run scoreboard players operation @s KD_frac %= const10 CONST

# KD_whole = KD_scaled / 10  (whole number part)
execute as @a run scoreboard players operation @s KD_whole = @s KD_scaled
execute as @a run scoreboard players operation @s KD_whole /= const10 CONST


# copy careerlose into a temp so we DON'T modify the real value
execute as @a run scoreboard players operation @s WL_denom = @s careerlose

# if temp denom is zero, set the temp to 1 (prevents division by 0, does NOT change careerlose)
execute as @a if score @s WL_denom matches 0 run scoreboard players set @s WL_denom 1

# --------- Compute scaled ratio (wins * 10 / losses) ----------
# WL_scaled = careerwins
execute as @a run scoreboard players operation @s WL_scaled = @s careerwins

# WL_scaled *= const10 (multiply by 10 using the fake player const10)
execute as @a run scoreboard players operation @s WL_scaled *= const10 CONST

# WL_scaled /= WL_denom (divide by copied losses)
execute as @a run scoreboard players operation @s WL_scaled /= @s WL_denom

# --------- Split into whole and fractional digits ----------
# WL_frac = WL_scaled % 10  (fractional digit)
execute as @a run scoreboard players operation @s WL_frac = @s WL_scaled
execute as @a run scoreboard players operation @s WL_frac %= const10 CONST

# WL_whole = WL_scaled / 10  (whole number part)
execute as @a run scoreboard players operation @s WL_whole = @s WL_scaled
execute as @a run scoreboard players operation @s WL_whole /= const10 CONST

# --------- Show career stats (with both ratios) ----------
execute as @p run tellraw @s [ {"text":"\n━━━━━━━━━━━━━━\n","color":"dark_gray"},{"text":"💼 Career Stats 💼\n","color":"aqua","bold":true},{"text":"Wins: ","color":"green"},{"score":{"name":"@s","objective":"careerwins"},"color":"white"},{"text":" | "},{"text":"Losses: ","color":"red"},{"score":{"name":"@s","objective":"careerlose"},"color":"white"},{"text":" | "},{"text":"W/L: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"WL_whole"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"WL_frac"},"color":"white"},{"text":"\n"},{"text":"Kills: ","color":"gold"},{"score":{"name":"@s","objective":"careerkills"},"color":"white"},{"text":" | "},{"text":"Deaths: ","color":"gray"},{"score":{"name":"@s","objective":"careerdeaths"},"color":"white"},{"text":" | "},{"text":"K/D: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"KD_whole"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"KD_frac"},"color":"white"},{"text":"\n"},{"text":"Ultimates: ","color":"light_purple"},{"score":{"name":"@s","objective":"careerults"},"color":"white"},{"text":" | "},{"text":"Plants: ","color":"yellow"},{"score":{"name":"@s","objective":"careerplants"},"color":"white"},{"text":" | "},{"text":"Defuses: ","color":"aqua"},{"score":{"name":"@s","objective":"careerdefuses"},"color":"white"},{"text":"\n━━━━━━━━━━━━━━","color":"dark_gray"}]