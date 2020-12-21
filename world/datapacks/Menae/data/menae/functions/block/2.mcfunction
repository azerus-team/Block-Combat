execute at @s run playsound minecraft:block.glass.break voice @a ~ ~ ~ 5
tellraw @a ["",{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" froze ","color":"aqua"},{"selector":"@a[tag=damaged] ","bold":true,"color":"dark_aqua"},{"text":" [","bold":true,"color":"dark_red"},{"text":"\ud83d\udde12","color":"red"},{"text":"]","bold":true,"color":"dark_red"}]
scoreboard players remove @a[tag=turn] game.mana 2
clear @a[tag=turn] ice
scoreboard players remove @a[tag=turn] game.blocks 1
scoreboard players remove @s game.heal 2
execute if score @s turn > $turn turn run tag @s add pre_frozen
scoreboard players set @s frozen 1
tag @s remove damaged