execute at @s run playsound minecraft:block.note_block.bell voice @a ~ ~ ~ 5
tellraw @a ["",{"selector":"@a[tag=turn]","bold":true,"color":"dark_aqua"},{"text":" has restored his mana ","color":"aqua"},{"text":"[","bold":true,"color":"dark_aqua"},{"text":"\ud83e\uddea3","color":"aqua"},{"text":"]","bold":true,"color":"dark_aqua"}]
scoreboard players add @s game.mana 2
clear @s glowstone
scoreboard players remove @s game.blocks 1
execute if score @s game.mana matches 6.. run scoreboard players set @s game.mana 5
