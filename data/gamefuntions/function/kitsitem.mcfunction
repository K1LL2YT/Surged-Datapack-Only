# --------------------
#      Kit Items
# --------------------
# Kits are given based on their kits. This will also include the bombs and sheers needed to help them through the game.
# Ults will also be given IF the player has gotten one in the previous rounds. However, using them will reset the ult
# time. (Seen in ults.mcfunction)

## Healer
execute as @a[tag=healer,team=!Admin,team=!Owner] at @s run give @s bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:infinity":1},show_in_tooltip:false},enchantment_glint_override=false] 1
execute as @a[tag=healer,team=!Admin,team=!Owner] at @s run item replace entity @s container.9 with arrow[unbreakable={show_in_tooltip:false}] 1
execute as @a[tag=healer,team=!Admin,team=!Owner] at @s run give @s splash_potion[item_name='{"bold":true,"color":"light_purple","text":"Health Potion"}',potion_contents={custom_color:16732754,custom_effects:[{id:"minecraft:instant_health",amplifier:1,duration:1}]}] 1
execute as @a[tag=healer,team=!Admin,team=!Owner] at @s run give @s splash_potion[item_name='{"bold":true,"color":"light_purple","text":"Health Potion"}',potion_contents={custom_color:16732754,custom_effects:[{id:"minecraft:instant_health",amplifier:1,duration:1}]}] 1
execute as @a[tag=healer,team=!Admin,team=!Owner] at @s run give @s potion[item_name='{"bold":true,"color":"light_purple","text":"Self Heal Potion"}',potion_contents={custom_color:16732754,custom_effects:[{id:"minecraft:instant_health",amplifier:2,duration:1}]}] 1
execute as @a[tag=healer,team=!Admin,team=!Owner] at @s run give @s minecraft:tropical_fish[minecraft:enchantments={knockback:2},item_name='{"bold":true,"color":"#ff9900","text":"Knockback Nemo"}']
execute as @a[tag=healer,team=!Admin,team=!Owner] at @s run attribute @s generic.max_health base set 30

## Recon
execute as @a[tag=recon,team=!Admin,team=!Owner] at @s run give @s bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:infinity":1,"punch":1},show_in_tooltip:false},enchantment_glint_override=false] 1
execute as @a[tag=recon,team=!Admin,team=!Owner] at @s run give @s redstone_torch[item_name='{"bold":true,"color":"yellow","text":"Recon Tower"}',lore=['{"color":"red","text":"Plant to see the Enemy team in a radius."}'],custom_model_data=1] 1
execute as @a[tag=recon,team=!Admin,team=!Owner] at @s run item replace entity @s container.9 with arrow[unbreakable={show_in_tooltip:false}] 1
execute as @a[tag=recon,team=!Admin,team=!Owner] at @s run attribute @s generic.max_health base set 20

## Multi-shot
execute as @a[tag=multi,team=!Admin,team=!Owner] at @s run give @s crossbow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:multishot":1,"minecraft:infinity":1},show_in_tooltip:false},enchantment_glint_override=false] 1
execute as @a[tag=multi,team=!Admin,team=!Owner] at @s run item replace entity @s container.9 with arrow[unbreakable={show_in_tooltip:false}] 1
execute as @a[tag=multi,team=!Admin,team=!Owner] at @s run attribute @s generic.max_health base set 20

## Quick Charge
execute as @a[tag=quick,team=!Admin,team=!Owner] at @s run give @s crossbow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:quick_charge":2,"minecraft:infinity":1},show_in_tooltip:false},enchantment_glint_override=false] 1
execute as @a[tag=quick,team=!Admin,team=!Ownern] at @s run item replace entity @s container.9 with arrow[unbreakable={show_in_tooltip:false}] 1
execute as @a[tag=quick,team=!Admin,team=!Owner] at @s run attribute @s generic.max_health base set 20

## Melee
# execute as @a[tag=sword,team=!Admin,team=!Owner] at @s run give @s wooden_sword[unbreakable={show_in_tooltip:false},enchantment_glint_override=false] 1
execute as @a[tag=sword,team=!Admin,team=!Owner] at @s run give @s stick[enchantments={levels:{"minecraft:sharpness":5}},item_name='{"bold":true,"color":"#9da3b6","text":"Dagger"}'] 1
execute as @a[tag=sword,team=!Admin,team=!Owner] at @s run give @s potion[item_name='{"bold":true,"color":"aqua","text":"Speed Potion"}',potion_contents={custom_color:1570815,custom_effects:[{id:"minecraft:speed",duration:3600,show_particles:0b,show_icon:1b}]}] 1
execute as @a[tag=sword,team=!Admin,team=!Owner] at @s run attribute @s generic.max_health base set 20

## Potion Master
execute as @a[tag=splasher,team=!Admin,team=!Owner] at @s run give @s stick[enchantments={levels:{"minecraft:sharpness":1}},item_name='{"bold":true,"color":"#9da3b6","text":"Dagger"}'] 1
execute as @a[tag=splasher,team=!Admin,team=!Owner] at @s run give @s lingering_potion[item_name='{"bold":true,"color":"#90b9cc","text":"Resistance Potion"}',potion_contents={custom_color:11654093,custom_effects:[{id:"minecraft:resistance",amplifier:1,duration:100}]}] 2
execute as @a[tag=splasher,team=!Admin,team=!Owner] at @s run give @s lingering_potion[item_name='{"bold":true,"color":"#6b9767","text":"Poison Potion"}',potion_contents={custom_color:8559490,custom_effects:[{id:"minecraft:poison",duration:100}]}] 2
execute as @a[tag=splasher,team=!Admin,team=!Owner] at @s run give @s lingering_potion[item_name='{"bold":true,"color":"#303a66","text":"Slowness Potion"}',potion_contents={custom_color:3690902,custom_effects:[{id:"minecraft:slowness",amplifier:2,duration:100}]}] 2
execute as @a[tag=splasher,team=!Admin,team=!Owner] at @s run give @s splash_potion[item_name='{"bold":true,"color":"#b4ccb1","text":"Speed Potion"}',potion_contents={custom_color:12432564,custom_effects:[{id:"minecraft:speed",duration:200}]}] 1
execute as @a[tag=splasher,team=!Admin,team=!Owner] at @s run attribute @s generic.max_health base set 20

## Engineer
execute as @a[tag=engineer,team=!Admin,team=!Owner] at @s run give @s bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:infinity":1,"punch":2},show_in_tooltip:false},enchantment_glint_override=false] 1
execute as @a[tag=engineer,team=!Admin,team=!Owner] at @s run item replace entity @s container.9 with arrow[unbreakable={show_in_tooltip:false}] 1
execute as @a[tag=engineer,team=!Admin,team=!Owner] at @s run attribute @s generic.max_health base set 30

## Juggernaunt
execute as @a[tag=jugg,team=!Admin,team=!Owner] at @s run give @s stick[enchantments={levels:{"minecraft:sharpness":3}},item_name='{"bold":true,"color":"#9da3b6","text":"Dagger"}'] 1
execute as @a[tag=jugg,team=!Admin,team=!Owner] at @s run item replace entity @s container.9 with arrow[unbreakable={show_in_tooltip:false}] 1
execute as @a[tag=jugg,team=!Admin,team=!Owner] at @s run item replace entity @s armor.chest with iron_chestplate[enchantments={levels:{"minecraft:projectile_protection":2}}]
execute as @a[tag=jugg,team=!Admin,team=!Owner] at @s run item replace entity @s armor.legs with iron_leggings[enchantments={levels:{"minecraft:projectile_protection":2}}]
execute as @a[tag=jugg,team=!Admin,team=!Owner] at @s run item replace entity @s armor.feet with iron_boots[enchantments={levels:{"minecraft:projectile_protection":2}}]
execute as @a[tag=jugg,team=!Admin,team=!Owner] at @s run attribute @s generic.max_health base set 14

## Ninja
execute as @a[tag=ninja,team=!Admin,team=!Owner] at @s run give @s stick[enchantments={levels:{"minecraft:sharpness":3}},item_name='{"bold":true,"color":"#9da3b6","text":"Dagger"}'] 1
execute as @a[tag=ninja,team=!Admin,team=!Owner] at @s run attribute @s generic.max_health base set 10

# Bomb/Shears/Ults
give @r[tag=attacker] carrot_on_a_stick[item_name='{"bold":true,"color":"blue","text":"Shockwave"}',lore=['{"color":"red","text":"Plant on the Site by crouching for 5 seconds."}'],custom_model_data=1] 1
give @a[tag=defender] shears
execute as @a if score @s hasult matches 1.. run give @s warped_fungus_on_a_stick[item_name='{"bold":true,"color":"red","text":"Ult Card"}',lore=['{"color":"aqua","text":"A Powerful ability that helps You, Your Team, or hinders the Other Team."}']]