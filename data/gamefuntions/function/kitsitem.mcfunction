# Kit Items
## Healer
execute as @a[tag=healer,team=!Admin,team=!Owner] at @s run give @s bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:infinity":1},show_in_tooltip:false},enchantment_glint_override=false] 1
execute as @a[tag=healer,team=!Admin,team=!Owner] at @s run item replace entity @s container.9 with arrow[unbreakable={show_in_tooltip:false}] 1
execute as @a[tag=healer,team=!Admin,team=!Owner] at @s run give @s splash_potion[item_name='{"bold":true,"color":"light_purple","text":"Health Potion"}',potion_contents={custom_color:16732754,custom_effects:[{id:"minecraft:instant_health",amplifier:1,duration:1}]}] 1
execute as @a[tag=healer,team=!Admin,team=!Owner] at @s run give @s splash_potion[item_name='{"bold":true,"color":"light_purple","text":"Health Potion"}',potion_contents={custom_color:16732754,custom_effects:[{id:"minecraft:instant_health",amplifier:1,duration:1}]}] 1
execute as @a[tag=healer,team=!Admin,team=!Owner] at @s run give @s minecraft:tropical_fish[minecraft:enchantments={knockback:2}]

## Recon
execute as @a[tag=recon,team=!Admin,team=!Owner] at @s run give @s bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:infinity":1,"punch":1},show_in_tooltip:false},enchantment_glint_override=false] 1
execute as @a[tag=recon,team=!Admin,team=!Owner] at @s run give @s redstone_torch[item_name='{"bold":true,"color":"yellow","text":"Recon Tower"}',lore=['{"color":"red","text":"Plant to see the Enemy team in a radius."}'],custom_model_data=1] 1
execute as @a[tag=recon,team=!Admin,team=!Owner] at @s run item replace entity @s container.9 with arrow[unbreakable={show_in_tooltip:false}] 1

## Multi-shot
execute as @a[tag=multi,team=!Admin,team=!Owner] at @s run give @s crossbow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:multishot":1,"minecraft:infinity":1},show_in_tooltip:false},enchantment_glint_override=false] 1
execute as @a[tag=multi,team=!Admin,team=!Owner] at @s run item replace entity @s container.9 with arrow[unbreakable={show_in_tooltip:false}] 1

## Quick Charge
execute as @a[tag=quick,team=!Admin,team=!Owner] at @s run give @s crossbow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:quick_charge":2,"minecraft:infinity":1},show_in_tooltip:false},enchantment_glint_override=false] 1
execute as @a[tag=quick,team=!Admi,team=!Ownern] at @s run item replace entity @s container.9 with arrow[unbreakable={show_in_tooltip:false}] 1

## Melee
execute as @a[tag=sword,team=!Admin,team=!Owner] at @s run give @s wooden_sword[unbreakable={show_in_tooltip:false},enchantment_glint_override=false] 1
execute as @a[tag=sword,team=!Admin,team=!Owner] at @s run give @s potion[item_name='{"bold":true,"color":"aqua","text":"Speed Potion"}',potion_contents={custom_color:1570815,custom_effects:[{id:"minecraft:speed",amplifier:0,duration:3600,show_particles:0b,show_icon:1b}]}] 1

## Potion Master
execute as @a[tag=splasher,team=!Admin,team=!Owner] at @s run give @s stick[enchantments={levels:{"minecraft:sharpness":1}}] 1
execute as @a[tag=splasher,team=!Admin,team=!Owner] at @s run give @s lingering_potion[item_name='{"bold":true,"color":"#90b9cc","text":"Resistance Potion"}',potion_contents={custom_color:11654093,custom_effects:[{id:"minecraft:resistance",amplifier:1,duration:100}]}] 2
execute as @a[tag=splasher,team=!Admin,team=!Owner] at @s run give @s lingering_potion[item_name='{"bold":true,"color":"#6b9767","text":"Poison Potion"}',potion_contents={custom_color:8559490,custom_effects:[{id:"minecraft:poison",amplifier:0,duration:100}]}] 2
execute as @a[tag=splasher,team=!Admin,team=!Owner] at @s run give @s lingering_potion[item_name='{"bold":true,"color":"#303a66","text":"Slowness Potion"}',potion_contents={custom_color:3690902,custom_effects:[{id:"minecraft:slowness",amplifier:2,duration:100}]}] 2
execute as @a[tag=splasher,team=!Admin,team=!Owner] at @s run give @s splash_potion[item_name='{"bold":true,"color":"#b4ccb1","text":"Invis Potion"}',potion_contents={custom_color:12432564,custom_effects:[{id:"minecraft:invisibility",amplifier:0,duration:200}]}] 1

## Engineer
execute as @a[tag=engineer,team=!Admin,team=!Owner] at @s run give @s bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:infinity":1,"punch":1},show_in_tooltip:false},enchantment_glint_override=false] 1
execute as @a[tag=engineer,team=!Admin,team=!Owner] at @s run item replace entity @s container.9 with arrow[unbreakable={show_in_tooltip:false}] 1

# Bomb/Shears/Ults
give @r[team=Yellow] carrot_on_a_stick[item_name='{"bold":true,"color":"blue","text":"Shockwave"}',lore=['{"color":"red","text":"Plant on the Site by crouching for 5 seconds."}'],custom_model_data=1] 1
give @a[team=Purple] shears
execute as @a if score @s hasult matches 1.. run give @s warped_fungus_on_a_stick