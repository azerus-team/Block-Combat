playsound minecraft:entity.wolf.death ambient @s ~ ~ ~ 10
title @s times 10 20 10
title @s title ["",{"text":"You died","bold":true,"color":"red"},{"text":"!","bold":true,"color":"dark_red"}]
tp @s -14 29 8
team leave @s
tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_aqua"},{"text":" died","color":"aqua"}]
tag @s remove game
tag @s remove turn
effect clear @s
effect give @s minecraft:weakness 1 1 true
effect give @s saturation 999999 255 true
scoreboard players reset @s turn_order
tag @s remove burned
tag @s remove damaged
tp @s -1 29 20
tp @s -14 29 8
replaceitem entity @s armor.head air
scoreboard players set @s frozen 0
scoreboard players set @s invulnerable 0
scoreboard players set @s blindness 0
scoreboard players set @s nausea 0
scoreboard players set @s soul 0
tag @s remove double
tag @s remove tell
effect clear @s
effect give @s minecraft:weakness 1 1 true
effect give @s saturation 999999 255 true
team leave @s
tag @s remove burned
tag @s remove invulnerable

execute if score ingame ingame matches ..1 run function menae:finish
