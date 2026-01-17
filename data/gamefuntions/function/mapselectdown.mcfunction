# Its a map select... WHAT ELSE DO YOU WANT?

scoreboard players remove mapselect mapselect 1

execute if score mapselect mapselect matches 1 run tellraw @a ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Map Selected","italic":true},{"text":"\n"},{"text":"Nether","bold":true,"color":"red"},{"text":"\n"},{"text":"★★☆☆☆","bold":true,"color":"green"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute if score mapselect mapselect matches 2 run tellraw @a ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Map Selected","italic":true},{"text":"\n"},{"text":"Overworld","bold":true,"color":"green"},{"text":"\n"},{"text":"★★★☆☆","bold":true,"color":"yellow"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute if score mapselect mapselect matches 3 run tellraw @a ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Map Selected","italic":true},{"text":"\n"},{"text":"Doors","bold":true,"color":"gold"},{"text":"\n"},{"text":"★★★★☆","bold":true,"color":"gold"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute if score mapselect mapselect matches 4 run tellraw @a ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Map Selected","italic":true},{"text":"\n"},{"text":"Treasure Takedown","bold":true,"color":"aqua"},{"text":"\n"},{"text":"★★★★☆","bold":true,"color":"gold"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute if score mapselect mapselect matches 5 run tellraw @a ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Map Selected","italic":true},{"text":"\n"},{"text":"Switch","bold":true,"color":"red"},{"text":"back","bold":true,"color":"blue"},{"text":"\n"},{"text":"★★★★★","bold":true,"color":"red"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute if score mapselect mapselect matches 6 run tellraw @a ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Map Selected","italic":true},{"text":"\n"},{"text":"Factory","bold":true,"color":"gold"},{"text":"\n"},{"text":"★★★★★","bold":true,"color":"red"},{"text":"\n"},{"text":"----------","color":"gray"}]
execute if score mapselect mapselect matches 7 run tellraw @a ["",{"text":"----------","color":"gray"},{"text":"\n"},{"text":"Map Selected","italic":true},{"text":"\n"},{"text":"Winter Warfare","bold":true,"color":"#94c9e2"},{"text":"\n"},{"text":"🎁🎁🎁🎁▢","bold":true,"color":"gold"},{"text":"\n"},{"text":"----------","color":"gray"}]

execute if score mapselect mapselect matches 1 run clone -177 -54 194 -189 -61 208 -176 -61 131
execute if score mapselect mapselect matches 2 run clone -189 -61 224 -177 -54 210 -176 -61 131
execute if score mapselect mapselect matches 3 run clone -203 -61 224 -191 -54 210 -176 -61 131
execute if score mapselect mapselect matches 4 run clone -203 -61 208 -191 -54 194 -176 -61 131
execute if score mapselect mapselect matches 5 run clone -203 -61 192 -191 -54 178 -176 -61 131
execute if score mapselect mapselect matches 6 run clone -177 -54 226 -189 -61 240 -176 -61 131
execute if score mapselect mapselect matches 7 run clone -177 -54 178 -189 -61 192 -176 -61 131

execute if score mapselect mapselect matches 1 run fill -163 -60 145 -163 -54 131 minecraft:lime_concrete
execute if score mapselect mapselect matches 2 run fill -163 -60 145 -163 -54 131 minecraft:yellow_concrete
execute if score mapselect mapselect matches 3 run fill -163 -60 145 -163 -54 131 minecraft:orange_concrete
execute if score mapselect mapselect matches 4 run fill -163 -60 145 -163 -54 131 minecraft:orange_concrete
execute if score mapselect mapselect matches 5 run fill -163 -60 145 -163 -54 131 minecraft:red_concrete
execute if score mapselect mapselect matches 6 run fill -163 -60 145 -163 -54 131 minecraft:red_concrete
execute if score mapselect mapselect matches 7 run fill -163 -60 145 -163 -54 131 minecraft:orange_concrete

execute if score mapselect mapselect matches 1 run fill -153 -59 142 -153 -54 142 minecraft:lime_stained_glass
execute if score mapselect mapselect matches 2 run fill -153 -59 142 -153 -54 142 minecraft:yellow_stained_glass
execute if score mapselect mapselect matches 3 run fill -153 -59 142 -153 -54 142 minecraft:orange_stained_glass
execute if score mapselect mapselect matches 4 run fill -153 -59 142 -153 -54 142 minecraft:orange_stained_glass
execute if score mapselect mapselect matches 5 run fill -153 -59 142 -153 -54 142 minecraft:red_stained_glass
execute if score mapselect mapselect matches 6 run fill -153 -59 142 -153 -54 142 minecraft:red_stained_glass
execute if score mapselect mapselect matches 7 run fill -153 -59 142 -153 -54 142 minecraft:orange_stained_glass

execute if score mapselect mapselect matches 1 run fill -153 -54 134 -153 -59 134 minecraft:lime_stained_glass
execute if score mapselect mapselect matches 2 run fill -153 -54 134 -153 -59 134 minecraft:yellow_stained_glass
execute if score mapselect mapselect matches 3 run fill -153 -54 134 -153 -59 134 minecraft:orange_stained_glass
execute if score mapselect mapselect matches 4 run fill -153 -54 134 -153 -59 134 minecraft:orange_stained_glass
execute if score mapselect mapselect matches 5 run fill -153 -54 134 -153 -59 134 minecraft:red_stained_glass
execute if score mapselect mapselect matches 6 run fill -153 -54 134 -153 -59 134 minecraft:red_stained_glass
execute if score mapselect mapselect matches 7 run fill -153 -54 134 -153 -59 134 minecraft:orange_stained_glass

execute if score mapselect mapselect matches 1 run time set night
execute if score mapselect mapselect matches 1 run weather clear
execute if score mapselect mapselect matches 2 run time set noon
execute if score mapselect mapselect matches 2 run weather clear
execute if score mapselect mapselect matches 3 run time set midnight
execute if score mapselect mapselect matches 3 run weather thunder
execute if score mapselect mapselect matches 4 run time set noon
execute if score mapselect mapselect matches 4 run weather clear
execute if score mapselect mapselect matches 5 run time set noon
execute if score mapselect mapselect matches 5 run weather clear
execute if score mapselect mapselect matches 6 run time set noon
execute if score mapselect mapselect matches 6 run weather clear
execute if score mapselect mapselect matches 7 run time set midnight
execute if score mapselect mapselect matches 7 run weather rain

fill -163 -59 144 -163 -55 132 air