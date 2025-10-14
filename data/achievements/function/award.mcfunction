#100 Kills
execute as @a if score @s careerkills matches 100.. run advancement grant @s only minecraft:adventure/adventuring_time

#First Kill
execute as @a if score @s careerkills matches 1.. run advancement grant @s only minecraft:adventure/kill_a_mob

#Join the Game
execute as @a run advancement grant @s only minecraft:adventure/shoot_arrow

#Pacifist

#Ultimate Pacfist

#Plant
execute as @a if score @s careerplants matches 1.. run advancement grant @s only minecraft:husbandry/breed_an_animal
#Defuse
execute as @a if score @s careerdefuses matches 1.. run advancement grant @s only minecraft:husbandry/tame_an_animal
#Ultimate Ace
execute as @a if score @s kills matches 30.. run advancement grant @s only minecraft:adventure/hero_of_the_village
#Ace
execute as @a if score @s killstreak matches 5.. run advancement grant @s only minecraft:adventure/whos_the_pillager_now
#Win a game
execute as @a if score @s careerwins matches 5.. run advancement grant @s only minecraft:adventure/trade
#Win 5 games
execute as @a if score @s careerwins matches 5.. run advancement grant @s only minecraft:adventure/sniper_duel
#F*ck You Alex

#First of Many
execute as @a if score @s careerdeaths matches 1.. run advancement grant @s only minecraft:adventure/voluntary_exile
#You're Bad
execute as @a if score @s careerdeaths matches 100.. run advancement grant @s only minecraft:adventure/very_very_frightening
#Spinning

#Water can Kill

#Ult for the Win
execute as @a if score @s careerults matches 1.. run advancement grant @s only minecraft:adventure/under_lock_and_key