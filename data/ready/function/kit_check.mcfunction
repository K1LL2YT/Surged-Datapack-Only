scoreboard players set yellowmulti Kit 0
scoreboard players set yellowquick Kit 0
scoreboard players set yellowsword Kit 0
scoreboard players set yellowhealer Kit 0 
scoreboard players set yellowrecon Kit 0
scoreboard players set yellowsplasher Kit 0
scoreboard players set yellowengineer Kit 0
scoreboard players set purplemulti Kit 0
scoreboard players set purplequick Kit 0
scoreboard players set purplesword Kit 0
scoreboard players set purplehealer Kit 0 
scoreboard players set purplerecon Kit 0
scoreboard players set purplesplasher Kit 0
scoreboard players set purpleengineer Kit 0

execute as @a[tag=multi,team=Yellow] run scoreboard players add yellowmulti Kit 1
execute as @a[tag=quick,team=Yellow] run scoreboard players add yellowquick Kit 1
execute as @a[tag=sword,team=Yellow] run scoreboard players add yellowsword Kit 1
execute as @a[tag=healer,team=Yellow] run scoreboard players add yellowhealer Kit 1
execute as @a[tag=recon,team=Yellow] run scoreboard players add yellowrecon Kit 1
execute as @a[tag=splasher,team=Yellow] run scoreboard players add yellowsplasher Kit 1
execute as @a[tag=engineer,team=Yellow] run scoreboard players add yellowengineer Kit 1

execute as @a[tag=multi,team=Purple] run scoreboard players add purplemulti Kit 1
execute as @a[tag=quick,team=Purple] run scoreboard players add purplequick Kit 1
execute as @a[tag=sword,team=Purple] run scoreboard players add purplesword Kit 1
execute as @a[tag=healer,team=Purple] run scoreboard players add purplehealer Kit 1
execute as @a[tag=recon,team=Purple] run scoreboard players add purplerecon Kit 1
execute as @a[tag=splasher,team=Purple] run scoreboard players add purplesplasher Kit 1
execute as @a[tag=engineer,team=Purple] run scoreboard players add purpleengineer Kit 1

execute unless score yellowmulti Kit > Duplicate Kit unless score yellowquick Kit > Duplicate Kit unless score yellowsword Kit > Duplicate Kit unless score yellowhealer Kit > Duplicate Kit unless score yellowrecon Kit > Duplicate Kit unless score yellowsplasher Kit > Duplicate Kit unless score yellowengineer Kit > Duplicate Kit unless score purplemulti Kit > Duplicate Kit unless score purplequick Kit > Duplicate Kit unless score purplesword Kit > Duplicate Kit unless score purplehealer Kit > Duplicate Kit unless score purplesplasher Kit > Duplicate Kit unless score purplerecon Kit > Duplicate Kit unless score purpleengineer Kit > Duplicate Kit run function gamefuntions:startgame

execute unless score yellowmulti Kit <= Duplicate Kit run tellraw @a [{"text":"Yellow has more people on Multishot: ","color":"red"},{"selector":"@a[team=Yellow,tag=multi]","color":"yellow"}]
execute unless score purplemulti Kit <= Duplicate Kit run tellraw @a [{"text":"Purple has more people on Multishot: ","color":"red"},{"selector":"@a[team=Purple,tag=multi]","color":"dark_purple"}]

execute unless score yellowsword Kit <= Duplicate Kit run tellraw @a [{"text":"Yellow has more people on Melee: ","color":"red"},{"selector":"@a[team=Yellow,tag=sword]","color":"yellow"}]
execute unless score purplesword Kit <= Duplicate Kit run tellraw @a [{"text":"Purple has more people on Melee: ","color":"red"},{"selector":"@a[team=Purple,tag=sword]","color":"dark_purple"}]

execute unless score yellowhealer Kit <= Duplicate Kit run tellraw @a [{"text":"Yellow has more people on Healer: ","color":"red"},{"selector":"@a[team=Yellow,tag=healer]","color":"yellow"}]
execute unless score purplehealer Kit <= Duplicate Kit run tellraw @a [{"text":"Purple has more people on Healer: ","color":"red"},{"selector":"@a[team=Purple,tag=healer]","color":"dark_purple"}]

execute unless score yellowrecon Kit <= Duplicate Kit run tellraw @a [{"text":"Yellow has more people on Recon: ","color":"red"},{"selector":"@a[team=Yellow,tag=recon]","color":"yellow"}]
execute unless score purplerecon Kit <= Duplicate Kit run tellraw @a [{"text":"Purple has more people on Recon: ","color":"red"},{"selector":"@a[team=Purple,tag=recon]","color":"dark_purple"}]

execute unless score yellowsplasher Kit <= Duplicate Kit run tellraw @a [{"text":"Yellow has more people on Potion Master: ","color":"red"},{"selector":"@a[team=Yellow,tag=splasher]","color":"yellow"}]
execute unless score purplesplasher Kit <= Duplicate Kit run tellraw @a [{"text":"Purple has more people on Potion Master: ","color":"red"},{"selector":"@a[team=Purple,tag=splasher]","color":"dark_purple"}]

execute unless score yellowengineer Kit <= Duplicate Kit run tellraw @a [{"text":"Yellow has more people on Engineer: ","color":"red"},{"selector":"@a[team=Yellow,tag=engineer]","color":"yellow"}]
execute unless score purpleengineer Kit <= Duplicate Kit run tellraw @a [{"text":"Purple has more people on Engineer: ","color":"red"},{"selector":"@a[team=Purple,tag=engineer]","color":"dark_purple"}]

execute unless score yellowquick Kit <= Duplicate Kit run tellraw @a [{"text":"Yellow has more people on Quick Charge: ","color":"red"},{"selector":"@a[team=Yellow,tag=quick]","color":"yellow"}]
execute unless score purplequick Kit <= Duplicate Kit run tellraw @a [{"text":"Purple has more people on Quick Charge: ","color":"red"},{"selector":"@a[team=Purple,tag=quick]","color":"dark_purple"}]