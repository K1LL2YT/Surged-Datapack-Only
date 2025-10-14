# Count ready players per team
setblock 3 -31 3 minecraft:redstone_block
execute as @a[scores={ReadyTrigger=1..}] run scoreboard players set @s Ready 1
execute as @a[scores={ReadyTrigger=0}] run scoreboard players set @s Ready 0
scoreboard players set Yellow ReadyCount 0
scoreboard players set Purple ReadyCount 0
execute as @a[team=Yellow,scores={Ready=1}] run scoreboard players add Yellow ReadyCount 1
execute as @a[team=Purple,scores={Ready=1}] run scoreboard players add Purple ReadyCount 1

# Check if teams are fully ready
execute if score Yellow ReadyCount = Yellow TeamCount if score Purple ReadyCount = Purple TeamCount run function gamefuntions:startgame

# If any team not ready, announce status
execute unless score Yellow ReadyCount = Yellow TeamCount run tellraw @a [{"text":"Yellow (Attackers) is NOT ready! Missing: ","color":"red"},{"selector":"@a[team=Yellow,scores={Ready=0}]","color":"yellow"}]
execute unless score Purple ReadyCount = Purple TeamCount run tellraw @a [{"text":"Purple (Defenders) is NOT ready! Missing: ","color":"red"},{"selector":"@a[team=Purple,scores={Ready=0}]","color":"yellow"}]
execute as @a at @s unless score Yellow ReadyCount = Yellow TeamCount run playsound minecraft:block.note_block.bass record @s ~ ~ ~
execute as @a at @s unless score Purple ReadyCount = Purple TeamCount run playsound minecraft:block.note_block.bass record @s ~ ~ ~

# Unlock ready check so button can be pressed again
scoreboard players set #Lock ReadyCheckLock 0
