execute at @s run playsound minecraft:entity.elder_guardian.curse voice @a ~ ~ ~ 5 2
tellraw @a ["",{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" hit and blinded ","color":"aqua"},{"selector":"@a[tag=damaged]","bold":true,"color":"dark_aqua"},{"text":" [","bold":true,"color":"dark_red"},{"text":"\ud83d\udde112","color":"red"},{"text":"]","bold":true,"color":"dark_red"}]
scoreboard players remove @a[tag=turn] game.mana 2
clear @a[tag=turn] coal_block
scoreboard players remove @a[tag=turn] game.blocks 1
scoreboard players remove @s game.heal 12
scoreboard players set @s blindness 2
tag @s remove damaged
