execute if score $case_timer case.timer matches 1.. run scoreboard players add $case_timer case.timer 1
execute if score $case_timer case.timer matches 150 run scoreboard players set $case_timer case.timer 0
execute if score $case_timer case.timer matches 2 run setblock 15 30 8 air
execute if score $case_timer case.timer matches 2 run summon minecraft:armor_stand 15 29 8 {NoGravity:1b,Rotation:[90f],ArmorItems:[{},{},{},{id:"ender_chest",Count:1b}],Tags:[e.chest],Invisible:1b,Invulnerable:1b,DisabledSlots:2039583}
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 2..50 run tp @s ~ ~0.03 ~ ~7 ~
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 2..50 run particle minecraft:end_rod ~ ~1.8 ~ 0 0 0 0.1 1

execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 2 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 1.2
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 5 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 1.25
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 8 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 1.3
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 11 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 1.35
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 14 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 1.4
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 17 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 1.45
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 20 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 1.5
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 23 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 1.55
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 26 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 1.6
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 29 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 1.65
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 32 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 1.7
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 35 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 1.75
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 38 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 1.8
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 41 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 1.85
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 44 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 1.9
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 47 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 1.95
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 50 run playsound minecraft:block.note_block.xylophone ambient @a ~ ~ ~ 10 2

execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 50.. run tp @s ~ ~ ~ 90 ~
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 70 run particle minecraft:explosion ~ ~1.8 ~ 0.2 0.2 0.2 0.1 3 force
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 70 run particle minecraft:cloud ~ ~1.8 ~ 0.1 0.1 0.1 0.1 30
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 70 run playsound minecraft:entity.generic.explode ambient @a

execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 0 run data merge entity @s {CustomName:'{"text":"[Redstone Block]","bold":true,"color":"red"}',ArmorItems:[{},{},{},{id:"redstone_block",Count:1b}],CustomNameVisible:1b}
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 1 run data merge entity @s {CustomName:'{"text":"[Coarse Dirt]","bold":true,"color":"gray"}',ArmorItems:[{},{},{},{id:"coarse_dirt",Count:1b}],CustomNameVisible:1b}
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 2 run data merge entity @s {CustomName:'{"text":"[Gold]","bold":true,"color":"gold"}',ArmorItems:[{},{},{},{id:"gold_block",Count:1b}],CustomNameVisible:1b}
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 3 run data merge entity @s {CustomName:'{"text":"[Beacon]","bold":true,"color":"aqua"}',ArmorItems:[{},{},{},{id:"beacon",Count:1b}],CustomNameVisible:1b}
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 4 run data merge entity @s {CustomName:'{"text":"[TNT]","bold":true,"color":"red"}',ArmorItems:[{},{},{},{id:"tnt",Count:1b}],CustomNameVisible:1b}
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 5 run data merge entity @s {CustomName:'{"text":"[Glowstone]","bold":true,"color":"yellow"}',ArmorItems:[{},{},{},{id:"glowstone",Count:1b}],CustomNameVisible:1b}
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 6 run data merge entity @s {CustomName:'{"text":"[Slime Block]","bold":true,"color":"green"}',ArmorItems:[{},{},{},{id:"slime_block",Count:1b}],CustomNameVisible:1b}
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 7 run data merge entity @s {CustomName:'{"text":"[Fire Coral Block]","bold":true,"color":"dark_red"}',ArmorItems:[{},{},{},{id:"fire_coral_block",Count:1b}],CustomNameVisible:1b}
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 8 run data merge entity @s {CustomName:'{"text":"[Cactus]","bold":true,"color":"green"}',ArmorItems:[{},{},{},{id:"cactus",Count:1b}],CustomNameVisible:1b}
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 9 run data merge entity @s {CustomName:'{"text":"[Coal Block]","bold":true,"color":"dark_gray"}',ArmorItems:[{},{},{},{id:"coal_block",Count:1b}],CustomNameVisible:1b}
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 10 run data merge entity @s {CustomName:'{"text":"[Mycelium]","bold":true,"color":"dark_purple"}',ArmorItems:[{},{},{},{id:"mycelium",Count:1b}],CustomNameVisible:1b}
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 11 run data merge entity @s {CustomName:'{"text":"[Soul Sand]","bold":true,"color":"gray"}',ArmorItems:[{},{},{},{id:"soul_sand",Count:1b}],CustomNameVisible:1b}
execute as @e[tag=e.chest] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 12 run data merge entity @s {CustomName:'{"text":"[Bricks]","bold":true,"color":"dark_red"}',ArmorItems:[{},{},{},{id:"bricks",Count:1b}],CustomNameVisible:1b}

execute as @e[tag=open] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 0 run tellraw @a ["",{"selector":"@e[tag=open]","bold":true,"color":"dark_aqua"},{"text":" got","color":"aqua"},{"text":" [Redstone Block]","bold":true,"color":"red"},{"text":" from the case!","color":"aqua"}]
execute as @e[tag=open] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 1 run tellraw @a ["",{"selector":"@e[tag=open]","bold":true,"color":"dark_aqua"},{"text":" got","color":"aqua"},{"text":" [Coarse Dirt]","bold":true,"color":"gray"},{"text":" from the case!","color":"aqua"}]
execute as @e[tag=open] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 2 run tellraw @a ["",{"selector":"@e[tag=open]","bold":true,"color":"dark_aqua"},{"text":" got","color":"aqua"},{"text":" [Gold]","bold":true,"color":"gold"},{"text":" from the case!","color":"aqua"}]
execute as @e[tag=open] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 3 run tellraw @a ["",{"selector":"@e[tag=open]","bold":true,"color":"dark_aqua"},{"text":" got","color":"aqua"},{"text":" [Beacon]","bold":true,"color":"aqua"},{"text":" from the case!","color":"aqua"}]
execute as @e[tag=open] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 4 run tellraw @a ["",{"selector":"@e[tag=open]","bold":true,"color":"dark_aqua"},{"text":" got","color":"aqua"},{"text":" [TNT]","bold":true,"color":"red"},{"text":" from the case!","color":"aqua"}]
execute as @e[tag=open] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 5 run tellraw @a ["",{"selector":"@e[tag=open]","bold":true,"color":"dark_aqua"},{"text":" got","color":"aqua"},{"text":" [Glowstone]","bold":true,"color":"yellow"},{"text":" from the case!","color":"aqua"}]
execute as @e[tag=open] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 6 run tellraw @a ["",{"selector":"@e[tag=open]","bold":true,"color":"dark_aqua"},{"text":" got","color":"aqua"},{"text":" [Slime Block]","bold":true,"color":"green"},{"text":" from the case!","color":"aqua"}]
execute as @e[tag=open] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 7 run tellraw @a ["",{"selector":"@e[tag=open]","bold":true,"color":"dark_aqua"},{"text":" got","color":"aqua"},{"text":" [Fire Coral Block]","bold":true,"color":"dark_red"},{"text":" from the case!","color":"aqua"}]
execute as @e[tag=open] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 8 run tellraw @a ["",{"selector":"@e[tag=open]","bold":true,"color":"dark_aqua"},{"text":" got","color":"aqua"},{"text":" [Cactus]","bold":true,"color":"green"},{"text":" from the case!","color":"aqua"}]
execute as @e[tag=open] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 9 run tellraw @a ["",{"selector":"@e[tag=open]","bold":true,"color":"dark_aqua"},{"text":" got","color":"aqua"},{"text":" [Coal Block]","bold":true,"color":"dark_gray"},{"text":" from the case!","color":"aqua"}]
execute as @e[tag=open] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 10 run tellraw @a ["",{"selector":"@e[tag=open]","bold":true,"color":"dark_aqua"},{"text":" got","color":"aqua"},{"text":" [Mycelium]","bold":true,"color":"dark_purple"},{"text":" from the case!","color":"aqua"}]
execute as @e[tag=open] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 11 run tellraw @a ["",{"selector":"@e[tag=open]","bold":true,"color":"dark_aqua"},{"text":" got","color":"aqua"},{"text":" [Soul Sand]","bold":true,"color":"gray"},{"text":" from the case!","color":"aqua"}]
execute as @e[tag=open] at @s if score $case_timer case.timer matches 70 if score $block cases.block matches 12 run tellraw @a ["",{"selector":"@e[tag=open]","bold":true,"color":"dark_aqua"},{"text":" got","color":"aqua"},{"text":" [Bricks]","bold":true,"color":"dark_red"},{"text":" from the case!","color":"aqua"}]

execute if score $case_timer case.timer matches 149 run setblock 15 30 8 minecraft:ender_chest[facing= west]
execute as @a[tag=open] if score $case_timer case.timer matches 149 run tag @s remove open
execute if score $case_timer case.timer matches 149 run kill @e[tag=e.chest]















