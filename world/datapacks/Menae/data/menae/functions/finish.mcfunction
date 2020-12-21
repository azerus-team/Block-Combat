scoreboard objectives remove turn_order
scoreboard objectives setdisplay list 
scoreboard players add @a[tag=game] menu.cases 1
tellraw @a[tag=game] ["",{"text":"You got ","color":"aqua"},{"text":"1","bold":true,"color":"dark_aqua"},{"text":" case!","color":"aqua"}]
tp @a[tag=game] -1 29 20
title @a times 10 60 10
title @a title ["",{"selector":"@a[tag=game,limit=1]","bold":true,"color":"gold"},{"text":" won","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"}]
tag @a remove game
tag @a remove invulnerable
tag @a remove burned
tag @a remove tell
tag @a remove double
tag @a remove damaged
scoreboard players set @a frozen 0
scoreboard players set @a invulnerable 0
scoreboard players set @a blindness 0
scoreboard players set @a nausea 0
scoreboard players set @a soul 0
scoreboard players set start start 0
team leave @a
replaceitem entity @a armor.head air
team join nready @a[scores={ready=0}]
team join ready @a[scores={ready=1}]
effect clear @a
effect give @a saturation 999999 255 true
