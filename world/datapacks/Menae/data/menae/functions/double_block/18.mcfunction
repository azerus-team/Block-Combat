execute at @s run playsound minecraft:block.soul_sand.break voice @a ~ ~ ~ 5
tellraw @a ["",{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" cursed ","color":"aqua"},{"selector":"@a[tag=damaged]","bold":true,"color":"dark_aqua"},{"text":" [","bold":true,"color":"dark_red"},{"text":"\ud83d\udde120","color":"red"},{"text":"]","bold":true,"color":"dark_red"},{"text":" [","color":"gold"},{"text":"Golden Block Effect","color":"yellow"},{"text":"]","color":"gold"}]
scoreboard players remove @a[tag=turn] game.mana 2
clear @a[tag=turn] soul_sand
scoreboard players remove @a[tag=turn] game.blocks 1
scoreboard players remove @s game.heal 20
scoreboard players set @s soul 4
tag @s remove damaged	
tag @a[tag=turn] remove double